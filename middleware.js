export const config = {
    matcher: ['/((?!login\\.html|favicon\\.ico).*)'],
};

const SUPABASE_URL = 'https://zprzmhavbjiggqfzzzbt.supabase.co';
const SUPABASE_ANON_KEY = 'sb_publishable_zucE5w9pyxnkXU0r3A8LYQ_ERuwax9r';

export default async function middleware(request) {
    const cookieHeader = request.headers.get('cookie') || '';
    const match = cookieHeader.match(/(?:^|;\s*)sb-access-token=([^;]+)/);
    const token = match ? decodeURIComponent(match[1]) : null;

    if (!token) {
        return redirectToLogin(request);
    }

    try {
        const res = await fetch(`${SUPABASE_URL}/auth/v1/user`, {
            headers: {
                Authorization: `Bearer ${token}`,
                apikey: SUPABASE_ANON_KEY,
            },
        });
        if (!res.ok) {
            return redirectToLogin(request);
        }
    } catch (err) {
        return redirectToLogin(request);
    }
}

function redirectToLogin(request) {
    const requestUrl = new URL(request.url);
    const loginUrl = new URL('/login.html', requestUrl);
    loginUrl.searchParams.set('redirect', requestUrl.pathname);
    return Response.redirect(loginUrl, 302);
}
