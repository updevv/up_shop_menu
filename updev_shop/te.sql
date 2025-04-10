-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           11.7.2-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour updev_template
CREATE DATABASE IF NOT EXISTS `updev_template` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `updev_template`;

-- Listage de la structure de table updev_template. updev_shop
CREATE TABLE IF NOT EXISTS `updev_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `posShop` text DEFAULT NULL,
  `peds` text DEFAULT NULL,
  `blips` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table updev_template.updev_shop : ~29 rows (environ)
INSERT INTO `updev_shop` (`id`, `name`, `label`, `type`, `posShop`, `peds`, `blips`, `content`, `created_at`) VALUES
	(11, 'ammunation', 'Ammunation', 'ammunation', '{"x":809.7742309570313,"y":-2157.738037109375,"z":29.61902236938476}', '{"active":true,"pos":{"x":808.939453125,"y":-2159.186767578125,"z":29.61902236938476,"w":344.199462890625},"pedName":"s_m_y_ammucity_01"}', '{"active":true,"color":75,"sprite":313}', '[]', '2025-03-02 20:07:24'),
	(12, 'ltd ballas', 'magasin ballas', 'ltd', '{"x":-49.01132202148437,"y":-1754.110595703125,"z":29.42157936096191}', '{"pos":{"x":-47.61077499389648,"y":-1752.68408203125,"z":29.42541694641113,"w":139.70011901855},"active":true,"pedName":"mp_m_shopkeep_01"}', '{"active":true,"sprite":52,"color":2}', '[]', '2025-03-02 20:10:19'),
	(13, '247_strawberry', '247 Strawberry', '247', '{"x":26.00436401367187,"y":-1347.334716796875,"z":29.49680519104004}', '{"pos":{"x":24.16027069091797,"y":-1347.360595703125,"z":29.49681282043457,"w":269.5882568359375},"active":true,"pedName":"mp_m_shopkeep_01"}', '{"active":true,"color":2,"sprite":52}', '[{"categorie":"food","name":"bread","price":100,"label":"Bread"}]', '2025-03-02 20:17:14'),
	(14, 'el_rancho', 'Robs El Rancho', 'robs', '{"x":1135.8692626953126,"y":-982.1881713867188,"z":46.41581344604492}', '{"pos":{"x":1134.10546875,"y":-982.509765625,"z":46.41587448120117,"w":276.3974304199219},"active":true,"pedName":"mp_m_shopkeep_01"}', '{"color":2,"active":true,"sprite":52}', '[{"label":"Discord","categorie":"item","name":"test","price":1000}]', '2025-03-02 20:26:52'),
	(15, 'messa', 'AmmuNation Messa', 'ammunation', '{"x":842.0289306640625,"y":-1033.9913330078126,"z":28.19486618041992}', '{"pos":{"x":841.0795288085938,"y":-1035.359130859375,"z":28.19487571716308,"w":1.94137203693389},"active":true,"pedName":"s_m_y_ammucity_01"}', '{"color":75,"active":true,"sprite":313}', '[]', '2025-03-02 20:30:28'),
	(16, 'elgin', 'AmmuNation Elgin', 'ammunation', '{"x":22.64410781860351,"y":-1106.96240234375,"z":29.79703330993652}', '{"pos":{"x":23.86636543273925,"y":-1105.857177734375,"z":29.79703330993652,"w":154.43113708496095},"active":true,"pedName":"s_m_y_ammucity_01"}', '{"color":75,"active":true,"sprite":313}', '[{"categorie":"firearm","price":10,"ppa":true,"label":"Pistolet","name":"weapon_pistol"}]', '2025-03-02 20:32:04'),
	(17, 'vespucci', 'Ammunation Vespucci', 'ammunation', '{"x":-661.7493286132813,"y":-934.9907836914063,"z":21.82921981811523}', '{"pos":{"x":-660.9898681640625,"y":-933.5237426757813,"z":21.82921981811523,"w":179.52023315429688},"active":true,"pedName":"s_m_y_ammucity_01"}', '{"color":75,"active":true,"sprite":313}', '[]', '2025-03-02 20:59:15'),
	(18, 'ltd_job', 'LTD Jobs', 'ltd', '{"x":-710.3431396484375,"y":-911.9530639648438,"z":19.21853446960449}', '{"pos":{"x":-710.1646728515625,"y":-910.1547241210938,"z":19.22000885009765,"w":180.05955505371095},"active":true,"pedName":"mp_m_shopkeep_01"}', '{"color":2,"active":true,"sprite":52}', '[]', '2025-03-02 21:00:58'),
	(19, 'san_andreas', 'Robs San Andreas', 'robs', '{"x":-1222.7142333984376,"y":-907.1328735351563,"z":12.32636356353759}', '{"pos":{"x":-1222.0120849609376,"y":-908.381103515625,"z":12.32636070251464,"w":28.07669639587402},"active":true,"pedName":"mp_m_shopkeep_01"}', '{"color":2,"active":true,"sprite":52}', '[]', '2025-03-02 21:27:37'),
	(20, '247_prosperity', '247 Prosperity', 'robs', '{"x":-1487.3447265625,"y":-379.1233215332031,"z":40.16337966918945}', '{"pos":{"x":-1486.26611328125,"y":-377.9859619140625,"z":40.16337966918945,"w":127.87605285644531},"active":true,"pedName":"mp_m_shopkeep_01"}', '{"color":2,"active":true,"sprite":52}', '[]', '2025-03-02 21:30:07'),
	(21, 'power', 'Ammu Power', 'ammunation', '{"x":252.42552185058595,"y":-50.6694107055664,"z":69.94102478027344}', '{"pos":{"x":253.3749237060547,"y":-51.75523376464844,"z":69.94102478027344,"w":65.6780014038086},"active":true,"pedName":"s_m_y_ammucity_01"}', '{"color":75,"active":true,"sprite":313}', '[]', '2025-03-02 21:31:37'),
	(22, 'mirror_park', 'Mirror Park', 'ltd', '{"x":1160.2159423828126,"y":-321.81854248046877,"z":69.20809936523438}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":1160.0894775390626,"y":-319.9914245605469,"z":69.20948028564453,"w":191.8830108642578}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 21:44:28'),
	(23, 'palomino', 'Palomino', 'ammunation', '{"x":2567.268310546875,"y":293.88421630859377,"z":108.73481750488281}', '{"pedName":"s_m_y_ammucity_01","active":true,"pos":{"x":2566.64794921875,"y":292.61297607421877,"z":108.73487091064453,"w":350.103271484375}}', '{"active":true,"color":75,"sprite":313}', '[]', '2025-03-02 21:46:15'),
	(24, 'power_st', 'Power St', '247', '{"x":374.03094482421877,"y":325.9994812011719,"z":103.5661392211914}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":372.61138916015627,"y":326.3839111328125,"z":103.5661392211914,"w":249.71543884277345}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 21:49:47'),
	(25, 'mountain_v', 'Mountain V', 'ammunation', '{"x":1693.6220703125,"y":3760.40673828125,"z":34.70530700683594}', '{"pedName":"s_m_y_ammucity_01","active":true,"pos":{"x":1693.213134765625,"y":3761.988037109375,"z":34.70530700683594,"w":230.4643096923828}}', '{"active":true,"color":75,"sprite":313}', '[]', '2025-03-02 21:51:42'),
	(26, 'route_66', 'Route 66', 'ammunation', '{"x":-1117.7066650390626,"y":2699.1455078125,"z":18.55415725708007}', '{"pedName":"s_m_y_ammucity_01","active":true,"pos":{"x":-1118.0140380859376,"y":2700.696533203125,"z":18.55414581298828,"w":220.84896850585938}}', '{"active":true,"color":75,"sprite":313}', '[]', '2025-03-02 21:53:08'),
	(27, 'great_ocean', 'Great Ocean', 'ammunation', '{"x":-330.2748718261719,"y":6084.4638671875,"z":31.45476722717285}', '{"pedName":"s_m_y_ammucity_01","active":true,"pos":{"x":-330.6636047363281,"y":6085.908203125,"z":31.45477104187011,"w":220.38992309570313}}', '{"active":true,"color":75,"sprite":313}', '[]', '2025-03-02 21:54:28'),
	(28, 'banham_c', 'Banham_c', 'ltd', '{"x":-1824.073974609375,"y":792.7587280273438,"z":138.1697998046875}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":-1825.5428466796876,"y":794.0930786132813,"z":138.1837921142578,"w":229.6415252685547}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 21:56:32'),
	(29, 'robs', 'Robs', 'robs', '{"x":-2967.843994140625,"y":390.91644287109377,"z":15.04331970214843}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":-2966.43115234375,"y":390.86126708984377,"z":15.0433177947998,"w":73.90453338623047}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 21:57:34'),
	(30, 'ineseno', 'Ineseno', '247', '{"x":-3039.541015625,"y":585.944580078125,"z":7.90871620178222}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":-3038.98193359375,"y":584.5,"z":7.90871620178222,"w":13.12090682983398}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 21:58:34'),
	(31, 'barbareno', 'Barbareno', '247', '{"x":-3242.23193359375,"y":1001.4442138671875,"z":12.8305025100708}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":-3242.2666015625,"y":999.994873046875,"z":12.83049774169921,"w":359.0738830566406}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 21:59:48'),
	(32, 'harmony', 'Harmony', '247', '{"x":547.6151733398438,"y":2671.028076171875,"z":42.15633392333984}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":549.0276489257813,"y":2671.3447265625,"z":42.15633392333984,"w":100.04141998291016}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 22:01:22'),
	(33, 'route_68', 'Route 68', 'robs', '{"x":1166.06201171875,"y":2709.349853515625,"z":38.15773010253906}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":1165.8720703125,"y":2710.80126953125,"z":38.1577262878418,"w":176.8968963623047}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 22:02:33'),
	(34, 'route_13', 'Route 13', '247', '{"x":2678.745849609375,"y":3280.760498046875,"z":55.24094772338867}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":2678.12548828125,"y":3279.404541015625,"z":55.24094772338867,"w":329.72552490234377}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 22:03:44'),
	(35, 'alhambra', 'Alhanbra', '247', '{"x":1961.34326171875,"y":3740.745361328125,"z":32.34352493286133}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":1960.1075439453126,"y":3740.0537109375,"z":32.34352493286133,"w":296.4885559082031}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 22:05:13'),
	(36, 'grapeseed', 'Grapeseed', 'ltd', '{"x":1701.7685546875,"y":4925.26904296875,"z":42.06667327880859}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":1703.271484375,"y":4924.23486328125,"z":42.06807708740234,"w":61.44456100463867}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 22:07:32'),
	(37, 'ocean_hwy', 'Ocean Hwy', '247', '{"x":1729.2169189453126,"y":6414.548828125,"z":35.03701782226562}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":1727.8360595703126,"y":6415.20458984375,"z":35.03701782226562,"w":245.62596130371095}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 22:08:58'),
	(38, 'algonquin', 'Algonquin', 'robs', '{"x":1393.2803955078126,"y":3605.24658203125,"z":34.98094940185547}', '{"pedName":"mp_m_shopkeep_01","active":true,"pos":{"x":1392.6551513671876,"y":3606.462890625,"z":34.98094177246094,"w":200.64694213867188}}', '{"active":true,"color":2,"sprite":52}', '[]', '2025-03-02 22:10:24'),
	(39, 'great_ocean_hvy', 'Great Ocean Hvy', 'ammunation', '{"x":-3172.0615234375,"y":1088.2994384765626,"z":20.83874320983886}', '{"pedName":"s_m_y_ammucity_01","pos":{"x":-3173.117431640625,"y":1089.5872802734376,"z":20.83874320983886,"w":245.87628173828126},"active":true}', '{"sprite":313,"active":true,"color":75}', '[]', '2025-03-13 01:07:38');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
