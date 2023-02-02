-- ENCONTRANDO O PID:
-- Antes de encerrar o processo precisamos encontra o pid dele, pra isso fazemos uma consulta na tabela do sistema pg_stat_activity. Ela armazena informações sobre conexoes ativas com o banco, incluindo o pid de conexao.

SELECT pid
FROM pg_stat_activity
WHERE usename = 'myuser'
AND datname = 'mydatabase';

-- ou para ver todos os pid:

SELECT pid, usename
FROM pg_stat_activity;


-- ENCERRANDO A CONEXAO ATIVA:
-- Função do sistema que permite encerrar uma conexao ativa, usamos pra forçar a finalização da sessao, informando o processo ID (PID)

SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'mydatabase'
AND pid <> pg_backend_pid();