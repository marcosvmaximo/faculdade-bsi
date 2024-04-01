CREATE TABLE `Regras_Tempo`(
    `id` VARCHAR(36) NOT NULL,
    `tempo` TIMESTAMP NOT NULL,
    `preco_por_tempo` DECIMAL(8, 2) NOT NULL,
    `empresa_id` VARCHAR(36) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `Enderecos`(
    `id` CHAR(36) NOT NULL,
    `cep` VARCHAR(8) NOT NULL,
    `logradouro` VARCHAR(255) NOT NULL,
    `numero` INT NOT NULL,
    `bairro` VARCHAR(255) NOT NULL,
    `cidade` VARCHAR(255) NOT NULL,
    `estado` VARCHAR(2) NOT NULL,
    `pais` VARCHAR(255) NOT NULL,
    `empresa_id` VARCHAR(36) NOT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE `Empresas`(
    `id` CHAR(36) NOT NULL,
    `cnpj` VARCHAR(14) NOT NULL,
    `nome` VARCHAR(255) NOT NULL,
    `quantidade_vagas_carro` INT NOT NULL,
    `quantidade_vagas_moto` INT NOT NULL,
    `password_hash` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`)
);
ALTER TABLE
    `Empresas` ADD UNIQUE `empresas_cnpj_unique`(`cnpj`);

CREATE TABLE `Contatos`(
    `id` CHAR(36) NOT NULL,
    `ddd` VARCHAR(2) NOT NULL,
    `telefone` VARCHAR(9) NOT NULL,
    `empresa_id` VARCHAR(36) NOT NULL,
    PRIMARY KEY(`id`)
);
ALTER TABLE
    `Contatos` ADD CONSTRAINT `contatos_empresa_id_foreign` FOREIGN KEY(`empresa_id`) REFERENCES `Empresas`(`id`);
ALTER TABLE
    `Regras_Tempo` ADD CONSTRAINT `regras_tempo_empresa_id_foreign` FOREIGN KEY(`empresa_id`) REFERENCES `Empresas`(`id`);
ALTER TABLE
    `Enderecos` ADD CONSTRAINT `enderecos_empresa_id_foreign` FOREIGN KEY(`empresa_id`) REFERENCES `Empresas`(`id`);