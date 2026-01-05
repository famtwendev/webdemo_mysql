USE usermgt;

CREATE TABLE `user` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `first_name` VARCHAR(45) NOT NULL,
   `last_name` VARCHAR(45) NOT NULL,
   `email` VARCHAR(45) NOT NULL,
   `phone` VARCHAR(45) NOT NULL,
   `comments` TEXT NOT NULL,
   `status` VARCHAR(10) NOT NULL DEFAULT 'active',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB;

INSERT INTO `user` 
(`first_name`, `last_name`, `email`, `phone`, `comments`, `status`)
VALUES
('Amanda', 'Nunes', 'anunes@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Alexander', 'Volkanovski', 'avolkanovski@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Khabib', 'Nurmagomedov', 'knurmagomedov@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Kamaru', 'Usman', 'kusman@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Israel', 'Adesanya', 'iadesanya@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Henry', 'Cejudo', 'hcejudo@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Valentina', 'Shevchenko', 'vshevchenko@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Tyron', 'Woodley', 'twoodley@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Rose', 'Namajunas', 'rnamajunas@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Tony', 'Ferguson', 'tferguson@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Jorge', 'Masvidal', 'jmasvidal@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Nate', 'Diaz', 'ndiaz@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Conor', 'McGregor', 'cmcGregor@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Cris', 'Cyborg', 'ccyborg@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Tecia', 'Torres', 'ttorres@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Ronda', 'Rousey', 'rrousey@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Holly', 'Holm', 'hholm@ufc.com', '012345 678910', 'I Love VPS', 'active'),
('Joanna', 'Jedrzejczyk', 'jjedrzejczyk@ufc.com', '012345 678910', 'I Love VPS', 'active');
