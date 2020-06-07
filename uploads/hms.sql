-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30-Maio-2019 às 11:28
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `accountant`
--

CREATE TABLE `accountant` (
  `accountant_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `accountant`
--

INSERT INTO `accountant` (`accountant_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'teste@teste', 'test@test', '12345', '12345', '12345');

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'admin', 'admin@admin.com', '123456', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `appointment_timestamp` int(11) NOT NULL,
  `profissional_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_timestamp`, `profissional_id`, `patient_id`) VALUES
(1, 1557266400, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bed`
--

CREATE TABLE `bed` (
  `bed_id` int(11) NOT NULL,
  `bed_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` longtext NOT NULL COMMENT 'ward,cabin,ICU',
  `status` int(11) NOT NULL DEFAULT '0',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bed_allotment`
--

CREATE TABLE `bed_allotment` (
  `bed_allotment_id` int(11) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `allotment_timestamp` int(11) NOT NULL,
  `discharge_timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blood_bank`
--

CREATE TABLE `blood_bank` (
  `blood_group_id` int(11) NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `blood_bank`
--

INSERT INTO `blood_bank` (`blood_group_id`, `blood_group`, `status`) VALUES
(1, 'A+', ''),
(2, 'A-', ''),
(3, 'B+', ''),
(4, 'B-', ''),
(5, 'AB+', ''),
(6, 'AB-', ''),
(7, 'O+', ''),
(8, 'O-', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blood_donor`
--

CREATE TABLE `blood_donor` (
  `blood_donor_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_donation_timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `diagnosis_report`
--

CREATE TABLE `diagnosis_report` (
  `diagnosis_report_id` int(11) NOT NULL,
  `report_type` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'xray,blood test',
  `document_type` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'text,photo',
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `laboratorist_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissional`
--

CREATE TABLE `profissional` (
  `profissional_id` int(11) NOT NULL,
  `registry` text NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `especialidade_id` int(11) NOT NULL,
  `profile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `profissional`
--

INSERT INTO `profissional` (`profissional_id`, `registry`, `name`, `email`, `password`, `address`, `phone`, `especialidade_id`, `profile`) VALUES
(2, '1234', 'test1', 'test@test', '123456', '123', '12344', 1, '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `task` longtext CHARACTER SET latin1 NOT NULL,
  `subject` longtext CHARACTER SET latin1 NOT NULL,
  `body` longtext CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `especialidade`
--

CREATE TABLE `especialidade` (
  `especialidade_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `especialidade`
--

INSERT INTO `especialidade` (`especialidade_id`, `name`, `description`) VALUES
(1, 'Estética 1', 'Tratamentos Comuns - Tratamento Pele'),
(2, 'Tratamento Pele', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `laboratorist`
--

CREATE TABLE `laboratorist` (
  `laboratorist_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `portuguese`) VALUES
(1, 'admin_dashboard', 'admin dashboard', 'Painel Administrivo'),
(2, 'login', 'login', 'Login'),
(3, 'email', 'email', 'E-mail'),
(4, 'password', 'password', 'Senha'),
(5, 'forgot_password?', 'forgot password?', 'Esqueceu a senha?'),
(6, 'account_type', 'account type', 'Tipo de conta'),
(7, 'admin', 'admin', 'Administrador'),
(8, 'profissional', 'profissional', 'Médico'),
(9, 'patient', 'patient', 'Paciente'),
(10, 'pharmacist', 'pharmacist', 'Farmacêutico'),
(11, 'laboratorist', 'laboratorist,eo', 'Laboratorista'),
(12, 'accountant', 'accountant', 'Contador'),
(13, 'monitor_hospital', 'monitor hospital', 'Monitor hospitalar'),
(14, 'nurse', 'nurse', 'Enfermeira'),
(15, 'department', 'department', 'Departamento'),
(16, 'dashboard', 'dashboard', 'Painel de Instrumentos'),
(17, 'settings', 'settings', 'Definições'),
(18, 'profile', 'profile', 'Perfil'),
(19, 'settings_updated', 'settings updated', 'Definições atualizadas'),
(20, 'logout', 'logout', 'Sair'),
(21, 'logged_out', 'logged out', 'Desconectado'),
(22, 'reset_password', 'reset password', 'Redefinir a senha'),
(23, 'reset', 'reset', 'Restabelecer'),
(24, 'account', 'account', 'Conta'),
(25, 'select_language', 'select language', 'Selecionar o idioma'),
(26, 'panel', 'panel', 'Painel'),
(27, 'view_appointment', 'view appointment', 'Ver nomeação'),
(28, 'view_payment', 'view payment', 'Ver o pagamento'),
(29, 'view_bed_status', 'view bed status', 'Visualizar o status de cama'),
(30, 'view_blood_bank', 'view blood bank', 'Ver banco de sangue'),
(31, 'view_medicine', 'view medicine', 'Ver medicina'),
(32, 'view_operation', 'view operation', 'Visualizar operação'),
(33, 'view_birth_report', 'view birth report', 'Ver relatório de nascimento'),
(34, 'view_death_report', 'view death report', 'Ver relatório morte'),
(35, 'manage_email_template', 'manage email template', 'Gerenciar modelo de e-mail'),
(36, 'manage_noticeboard', 'manage noticeboard', 'Gerenciar avisos'),
(37, 'system_settings', 'system settings', 'Configurações do sistema'),
(38, 'manage_language', 'manage language', 'Gerenciar linguagem'),
(39, 'backup_restore', 'backup restore', 'Restauração de Backup'),
(40, 'appointment', 'appointment', 'Nomeação'),
(41, 'payment', 'payment', 'Pagamento'),
(42, 'blood_bank', 'blood bank', 'Banco de sangue'),
(43, 'medicine', 'medicine', 'Medicina'),
(44, 'operation_report', 'operation report', 'Relatório operação'),
(45, 'birth_report', 'birth report', 'Relatório de nascimento'),
(46, 'death_report', 'death report', 'Relatório morte'),
(47, 'bed_allotment', 'bed allotment', 'Cama loteamento'),
(48, 'noticeboard', 'noticeboard', 'Noticias'),
(49, 'language', 'language', 'Linguagem'),
(50, 'backup', 'backup', 'Fazer backup'),
(51, 'calendar_schedule', 'calendar schedule', 'Calendário da programação'),
(52, 'manage_department', 'manage department', 'Gerenciar departamento'),
(53, 'department_list', 'department list', 'Lista de departamento'),
(54, 'add_department', 'add department', 'Adicionar departamento'),
(55, 'department_name', 'department name', 'Nome do departamento'),
(56, 'description', 'description', 'Descrição'),
(57, 'options', 'options', 'Opções'),
(58, 'edit', 'edit', 'Editar'),
(59, 'delete', 'delete', 'Excluir'),
(60, 'department_description', 'department description', 'Eescrição departamento'),
(61, 'manage_profissional', 'manage profissional', 'Gerenciar médico'),
(62, 'profissional_list', 'profissional list', 'Lista médico'),
(63, 'add_profissional', 'add profissional', 'Adicionar médico'),
(64, 'profissional_name', 'profissional name', 'Nome do médico'),
(65, 'name', 'name', 'Nome'),
(66, 'address', 'address', 'Endereço'),
(67, 'phone', 'phone', 'Telefone'),
(68, 'manage_patient', 'manage patient', 'Gerenciar paciente'),
(69, 'patient_list', 'patient list', 'Lista de pacientes'),
(70, 'add_patient', 'add patient', 'Adicionar paciente'),
(71, 'patient_name', 'patient name', 'Nome do paciente'),
(72, 'age', 'age', 'Idade'),
(73, 'sex', 'sex', 'Sexo'),
(74, 'blood_group', 'blood group', 'Grupo sanguíneo'),
(75, 'birth_date', 'birth date', 'Data de nascimento'),
(76, 'male', 'male', 'Masculino'),
(77, 'female', 'female', 'Feminino'),
(78, 'manage_nurse', 'manage nurse', 'Gerenciar enfermeira'),
(79, 'nurse_list', 'nurse list', 'Lista enfermeira'),
(80, 'add_nurse', 'add nurse', 'Adicionar enfermeira'),
(81, 'nurse_name', 'nurse name', 'Nome enfermeira'),
(82, 'manage_pharmacist', 'manage pharmacist', 'Gerenciar farmacêutico'),
(83, 'pharmacist_list', 'pharmacist list', 'Lista farmacêutico'),
(84, 'add_pharmacist', 'add pharmacist', 'Adicionar farmacêutico'),
(85, 'pharmacist_name', 'pharmacist name', 'Nome farmacêutico'),
(86, 'manage_laboratorist', 'manage laboratorist,eo', 'Gerenciar laboratorista'),
(87, 'laboratorist_list', 'laboratorist list,eo', 'Lista laboratorista'),
(88, 'add_laboratorist', 'add laboratorist,eo', 'Adicionar laboratorista'),
(89, 'laboratorist_name', 'laboratorist name,sl', 'Nome laboratorista'),
(90, 'manage_accountant', 'manage accountant', 'Gerenciar contador'),
(91, 'accountant_list', 'accountant list', 'Lista de contador'),
(92, 'add_accountant', 'add accountant', 'Adicionar contador'),
(93, 'accountant_name', 'accountant name', 'Nome do contador'),
(94, 'phrase_list', 'phrase list', 'Lista de frases'),
(95, 'add_phrase', 'add phrase', 'Adicionar frase'),
(96, 'add_language', 'add language', 'Adicionar linguagem'),
(97, 'phrase', 'phrase', 'Frase'),
(98, 'delete_language', 'delete language', 'Excluir linguagem'),
(99, 'update_phrase', 'update phrase', 'Atualizar frase'),
(100, 'time', 'time', 'Tempo'),
(101, 'amount', 'amount', 'Quantidade'),
(102, 'payment_type', 'payment type', 'Tipo de pagamento'),
(103, 'transaction_id', 'transaction id', 'ID da transação'),
(104, 'invoice_id', 'invoice id', 'ID fatura'),
(105, 'method', 'method', 'Método'),
(106, 'bed_list', 'bed list', 'Lista de cama'),
(107, 'bed_id', 'bed id', 'ID cama'),
(108, 'bed_type', 'bed type', 'Tipo de cama'),
(109, 'allotment_time', 'allotment time', 'Tempo loteamento'),
(110, 'discharge_time', 'discharge time', 'Tempo de descarga'),
(111, 'bed_number', 'bed number', 'Número cama'),
(112, 'type', 'type', 'Tipo'),
(113, 'blood_donor_list', 'blood donor list', 'Lista de doadores de sangue'),
(114, 'last_donation_date', 'last donation date', 'Data da última doação'),
(115, 'status', 'status', 'Estado'),
(116, 'category', 'category', 'Categoria'),
(117, 'price', 'price', 'Preço'),
(118, 'manufacturing_company', 'manufacturing company', 'Empresa de fabricação'),
(119, 'view_operation_report', 'view operation report', 'Exibir o relatório de operação'),
(120, 'view_report', 'view report', 'Ver relatório'),
(121, 'date', 'date', 'Data'),
(122, 'noticeboard_list', 'noticeboard list', 'Lista de avisos'),
(123, 'add_noticeboard', 'add noticeboard', 'Adicionar avisos'),
(124, 'title', 'title', 'Título'),
(125, 'notice', 'notice', 'Notar'),
(126, 'system_name', 'system name', 'Nome do sistema'),
(127, 'save', 'save', 'Salvar'),
(128, 'system_email', 'system email', 'Sistema de e-mail'),
(129, 'system_title', 'system title', 'Título sistema'),
(130, 'paypal_email', 'paypal email', 'E-mail paypal'),
(131, 'currency', 'currency', 'Moeda'),
(132, 'restore', 'restore', 'Restaurar'),
(133, 'report', 'report', 'Denunciar'),
(134, 'all', 'all', 'Tudo'),
(135, 'upload_&_restore_from_backup', 'upload & restore from backup', 'Enviar e restaurar a partir de backup'),
(136, 'manage_profile', 'manage profile', 'gerenciar o perfil'),
(137, 'update_profile', 'update profile', 'atualizar o perfil'),
(138, 'change_password', 'change password', 'alterar a senha'),
(139, 'new_password', 'new password', 'nova senha'),
(140, 'confirm_new_password', 'confirm new password', 'confirmar nova senha'),
(141, 'update_password', 'update password', 'atualização de senha'),
(142, 'option', 'option', 'opção'),
(143, 'edit_phrase', 'edit phrase', 'editar frase'),
(144, 'edit_noticeboard', 'edit noticeboard', 'editar avisos'),
(145, 'profissional_dashboard', 'profissional dashboard', 'médico dashboard'),
(146, 'manage_appointment', 'manage appointment', 'gerenciar nomeação'),
(147, 'manage_prescription', 'manage prescription', 'gerenciar prescrição'),
(148, 'manage_report', 'manage report', 'gerenciar relatório'),
(149, 'prescription', 'prescription', 'prescrição'),
(150, 'edit_patient', 'edit patient', 'editar paciente'),
(151, 'appointment_list', 'appointment list', 'lista de compromissos'),
(152, 'add_appointment', 'add appointment', 'adicionar nomeação'),
(153, 'edit_appointment', 'edit appointment', 'editar nomeação'),
(154, 'prescription_list', 'prescription list', 'Lista de prescrição'),
(155, 'add_prescription', 'add prescription', 'adicionar prescrição'),
(156, 'case_history', 'case history', 'história do caso'),
(157, 'add_description', 'add description', 'adicionar uma descrição'),
(158, 'medication', 'medication', 'medicação'),
(159, 'medication_from_pharmacist', 'medication from pharmacist', 'medicação de farmacêutico'),
(160, 'edit_prescription', 'edit prescription', 'editar prescrição'),
(161, 'diagnosis_report', 'diagnosis report', 'relatório de diagnóstico'),
(162, 'report_type', 'report type', 'denunciar o tipo'),
(163, 'document_type', 'document type', 'tipo de documento'),
(164, 'download', 'download', 'baixar'),
(165, 'manage_bed_allotment', 'manage bed allotment', 'gerenciar cama loteamento'),
(166, 'bed_allotment_list', 'bed allotment list', 'lista loteamento cama'),
(167, 'add_bed_allotment', 'add bed allotment', 'adicionar cama loteamento'),
(168, 'allotment_date_time', 'allotment date time', 'atribuição de data e hora'),
(169, 'discharge_date_time', 'discharge date time', 'descarga de data e hora'),
(170, 'operation', 'operation', 'operação'),
(171, 'birth', 'birth', 'nascimento'),
(172, 'death', 'death', 'morte'),
(173, 'other', 'other', 'outro'),
(174, 'add_report', 'add report', 'adicionar relatório'),
(175, 'patient_dashboard', 'patient dashboard', 'dashboard paciente'),
(176, 'view_prescription', 'view prescription', 'ver prescrição'),
(177, 'view_profissional', 'view profissional', 'vista médico'),
(178, 'admit_history', 'admit history', 'admitir história'),
(179, 'operation_history', 'operation history', 'histórico de operação'),
(180, 'view_invoice', 'view invoice', 'ver fatura'),
(181, 'payment_history', 'payment history', 'histórico de pagamento'),
(182, 'view_admit_history', 'view admit history', 'ver admitir história'),
(183, 'view_operation_history', 'view operation history', 'visualizar o histórico de operação'),
(184, 'invoice_list', 'invoice list', 'lista fatura'),
(185, 'creation_timestamp', 'creation timestamp', 'timestamp criação'),
(186, 'nurse_dashboard', 'nurse dashboard', 'dashboard enfermeira'),
(187, 'bed_ward', 'bed ward', 'cama de enfermaria'),
(188, 'manage_bed', 'manage bed', 'gerenciar cama'),
(189, 'manage_blood_bank', 'manage blood bank', 'gerenciar banco de sangue'),
(190, 'manage_blood_donor', 'manage blood donor', 'gerenciar doador de sangue'),
(191, 'add_bed', 'add bed', 'adicionar cama'),
(192, 'ward', 'ward', 'enfermaria'),
(193, 'cabin', 'cabin', 'cabine'),
(194, 'icu', 'icu', 'UTI'),
(195, 'edit_bed', 'edit bed', 'editar cama'),
(196, 'edit_bed_allotment', 'edit bed allotment', 'editar cama loteamento'),
(197, 'blood_bank_list', 'blood bank list', 'Lista de banco de sangue'),
(198, 'edit_blood_bank', 'edit blood bank', 'editar banco de sangue'),
(199, 'add_blood_donor', 'add blood donor', 'adicionar doador de sangue'),
(200, 'edit_blood_donor', 'edit blood donor', 'editar doador de sangue'),
(201, 'pharmacist_dashboard', 'pharmacist dashboard', 'dashboard farmacêutico'),
(202, 'medicine_category', 'medicine category', 'medicina categoria'),
(203, 'manage_medicine', 'manage medicine', 'gerenciar medicina'),
(204, 'provide_medication', 'provide medication', 'fornecer medicamentos'),
(205, 'manage_medicine_category', 'manage medicine category', 'gerenciar categoria medicina'),
(206, 'medicine_category_list', 'medicine category list', 'lista de categorias de medicina'),
(207, 'add_medicine_category', 'add medicine category', 'Adicione uma categoria medicina'),
(208, 'medicine_category_name', 'medicine category name', 'medicina nome da categoria'),
(209, 'medicine_category_description', 'medicine category description', 'medicina descrição da categoria'),
(210, 'medicine_list', 'medicine list', 'lista de medicamentos'),
(211, 'add_medicine', 'add medicine', 'adicionar medicina'),
(212, 'medicine_name', 'medicine name', 'nome do medicamento'),
(213, 'medicine_catogory', 'medicine catogory', 'medicina catogory'),
(214, 'edit_medicine_category', 'edit medicine category', 'edição medicina categoria'),
(215, 'edit_medicine', 'edit medicine', 'edição medicina'),
(216, 'laboratorist_dashboard', 'laboratorist dashboard,eo', 'laboratorista dashboard'),
(217, 'add_diagnosis_report', 'add diagnosis report', 'adicionar relatório de diagnóstico'),
(218, 'report_status', 'report status', 'status do relatório'),
(219, 'add_diagnostic_report', 'add diagnostic report', 'adicionar relatório de diagnóstico'),
(220, 'image', 'image', 'imagem'),
(221, 'doc', 'doc', 'doutor'),
(222, 'pdf', 'pdf', 'pdf'),
(223, 'excel', 'excel', 'sobressair'),
(224, 'upload_document', 'upload document', 'upload de documento'),
(225, 'accountant_dashboard', 'accountant dashboard', 'dashboard contador'),
(226, 'invoice / take_payment', 'invoice / take payment', 'factura / ter o pagamento'),
(227, 'manage_invoice', 'manage invoice', 'gerenciar fatura'),
(228, 'add_invoice', 'add invoice', 'adicionar fatura'),
(229, 'unpaid', 'unpaid', 'não remunerado'),
(230, 'take_cash_payment', 'take cash payment', 'tomar pagamento em dinheiro'),
(231, 'paid', 'paid', 'pago'),
(232, 'edit_invoice', 'edit invoice', 'editar fatura'),
(233, 'edit_nurse', '', 'editar enfermeira'),
(234, 'registry', '', 'registro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicine`
--

CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `medicine_category_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  `manufacturing_company` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicine_category`
--

CREATE TABLE `medicine_category` (
  `medicine_category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_from_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_from_id` int(11) NOT NULL,
  `user_to_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticeboard`
--

CREATE TABLE `noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`) VALUES
(1, 'TCC Unigranrio - ', 'Sistema para TCC unigranrio', 1406152800),
(2, 'Noticia teste', 'Teste', 1558476000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nurse`
--

CREATE TABLE `nurse` (
  `nurse_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `CPF` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `account_opening_timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `patient`
--

INSERT INTO `patient` (`patient_id`, `CPF`, `name`, `email`, `password`, `address`, `phone`, `sex`, `birth_date`, `age`, `blood_group`, `account_opening_timestamp`) VALUES
(1, '12345678911', 'test1', 'cliente1@teste.com', '123456', '123333', '123456789', 'female', '05/01/2019', 39, '0', 1406149437),
(2, '12345678912', 'Rafael', 'raf@test', '123', '123', '123', 'male', '02/07/22', 1234, '0', 1559196137),
(4, '', 'test2', 'test2@test2', '123456', '123456', '123456', 'male', '05/01/2019', 123, 'A+', 1559200949);

-- --------------------------------------------------------

--
-- Estrutura da tabela `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pharmacist`
--

CREATE TABLE `pharmacist` (
  `pharmacist_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `prescription`
--

CREATE TABLE `prescription` (
  `prescription_id` int(11) NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `profissional_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `case_history` longtext COLLATE utf8_unicode_ci NOT NULL,
  `medication` longtext COLLATE utf8_unicode_ci NOT NULL,
  `medication_from_pharmacist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `creation_timestamp`, `profissional_id`, `patient_id`, `case_history`, `medication`, `medication_from_pharmacist`, `description`) VALUES
(1, 1559206856, 2, 2, 'yryry', 'yryr', 'ry', 'ryr');

-- --------------------------------------------------------

--
-- Estrutura da tabela `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `type` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'operation,birth,death',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `profissional_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `report`
--

INSERT INTO `report` (`report_id`, `type`, `description`, `timestamp`, `profissional_id`, `patient_id`) VALUES
(1, 'birth', 'test', 1559206827, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'TCC-Golden Estética'),
(7, 'system_email', ''),
(2, 'system_title', 'Golden Estética'),
(3, 'address', 'Rua teste'),
(4, 'phone', '123456789'),
(5, 'paypal_email', ''),
(6, 'currency', 'R$');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`accountant_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`bed_id`);

--
-- Indexes for table `bed_allotment`
--
ALTER TABLE `bed_allotment`
  ADD PRIMARY KEY (`bed_allotment_id`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`blood_group_id`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`blood_donor_id`);

--
-- Indexes for table `diagnosis_report`
--
ALTER TABLE `diagnosis_report`
  ADD PRIMARY KEY (`diagnosis_report_id`);

--
-- Indexes for table `profissional`
--
ALTER TABLE `profissional`
  ADD PRIMARY KEY (`profissional_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`especialidade_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `laboratorist`
--
ALTER TABLE `laboratorist`
  ADD PRIMARY KEY (`laboratorist_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`medicine_category_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`nurse_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`pharmacist_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescription_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `accountant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `bed_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bed_allotment`
--
ALTER TABLE `bed_allotment`
  MODIFY `bed_allotment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `blood_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `blood_donor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `diagnosis_report`
--
ALTER TABLE `diagnosis_report`
  MODIFY `diagnosis_report_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profissional`
--
ALTER TABLE `profissional`
  MODIFY `profissional_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `especialidade`
--
ALTER TABLE `especialidade`
  MODIFY `especialidade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laboratorist`
--
ALTER TABLE `laboratorist`
  MODIFY `laboratorist_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `medicine_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `nurse_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `pharmacist_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `prescription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
