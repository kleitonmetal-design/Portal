-- ==============================================================================
-- SCHEMA SUPABASE: FOCUSFLOW - HISTÓRICO & MÉTRICAS DE FOCO (LOCAL-FIRST SYNC)
-- ==============================================================================

CREATE TABLE IF NOT EXISTS focusflow_historico (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    task_title TEXT NOT NULL,
    battery_level VARCHAR(20) DEFAULT 'medium',
    minutes_invested INTEGER DEFAULT 0,
    steps_completed INTEGER DEFAULT 1,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Ativar RLS (Row Level Security) e permitir inserções/leituras públicas ou autenticadas
ALTER TABLE focusflow_historico ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Permitir insercao anonima focusflow" ON focusflow_historico
    FOR INSERT WITH CHECK (true);

CREATE POLICY "Permitir leitura anonima focusflow" ON focusflow_historico
    FOR SELECT USING (true);
