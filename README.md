# Desafio-CBlab

Neste repositório, está contido toda a solução do desafio proposto pelo CBlab.

No arquivo [Json_schema](Json_schema.json) está contido a solução para a primeira tarefa.
Nos arquivos [new_tables](new_tables.sql) e [insert_values](insert_values.sql) esta contido a solução para a segunda tarefa.

A seguir, irei explicar meu raciocínio e a minha abordagem para finalizar este desafio:

## 3ª Tarefa

### Abordagem

Na formulação da estrutura do banco de dados a partir do JSON fornecido, traduzi o esquema JSON em tabelas SQL, estabelecendo relações significativas entre elas. Isso envolveu a seleção de tipos de dados apropriados para cada coluna, garantindo compatibilidade com os dados JSON correspondentes.

Mantenho a integridade dos dados implementando relações de chave estrangeira, alinhando o design do banco de dados com os princípios padrão de bancos de dados relacionais. Isso garante consistência e precisão na representação dos dados em todas as tabelas.

### Justificativa

O método escolhido prioriza a normalização e minimiza a redundância de dados dentro do banco de dados. Ao criar tabelas individuais para cada entidade (GuestChecks, Taxes, DetailLines, MenuItem), o design facilita a gestão eficiente e consultas direcionadas a informações específicas.

### Conselhos Considerados

Antes de prosseguir com a implementação real, esbocei as tabelas SQL, proporcionando uma representação visual das relações para garantir uma compreensão clara. Este passo preliminar contribui para um design mais cuidadoso e resistente a erros.

Para contemplar a escalabilidade da cadeia de restaurantes, as tabelas foram projetadas para acomodar várias lojas. Essa perspectiva mais abrangente garante que a estrutura do banco de dados permaneça eficaz à medida que o negócio se expande.
