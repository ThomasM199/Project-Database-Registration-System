-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2020 at 04:45 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `project3`
--

CREATE TABLE `project3` (
  `name` varchar(1000) DEFAULT NULL,
  `level` varchar(1000) DEFAULT NULL,
  `course` varchar(1000) DEFAULT NULL,
  `keywords` varchar(1000) DEFAULT NULL,
  `description` varchar(6000) DEFAULT NULL,
  `lecture` varchar(1000) DEFAULT NULL,
  `lecture_email` varchar(1000) DEFAULT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project3`
--

INSERT INTO `project3` (`name`, `level`, `course`, `keywords`, `description`, `lecture`, `lecture_email`, `id`) VALUES
('Rate based IPS foRate based IPS for DDoS', 'Honors', 'Cybersecurity and Forensics', 'Ddos, dos, ips, network security, security', 'Nowadays every organisation is connected to the Internet and more and more of the world population have access to the Internet. The development of Internet permits to simplify the communication between the people. Now it is easy to have a conversation with people from everywhere in the world. This popularity of Internet brings also new threats like viruses, worm, Trojan, or denial of services. Because of this, companies start to develop new security systems, which help in the protection of networks. The most common security tools used by companies or even by personal users at home are firewalls, antivirus and now even Intrusion Detection System (IDS).\n\nNevertheless, this is not enough so a new security system has been created as Intrusion Prevention Systems, which are getting more popular with the time .This could be defining as the blend between a firewall and an IDS. The IPS is using the detection capability of the IDS and the response capability of a firewall. Two main types of IPS exist, Network-based Intrusion Prevention System (NIPS) and Host-based Intrusion Prevention System (HIPS). The thirst should be set-up in front of critical resources as a web server while the second is set-up inside the host and so protect only this host. Different methodologies are used to evaluate IPSs but all of them have been produced by constructors or by organisms specialised in the evaluation of security devices. This means that no standard methodology in the evaluation of IPS exists. The utilisation of such methodology permits to benchmark system in an objective way and so it will be possible to compare the results with other systems. This thesis reviews different evaluation methodologies for IPS. Because of the lack of documentation around them the analysis of IDS evaluation methodology will be also done. This will permit to help in the creation of an IPS evaluation methodology. The evaluation of such security system is vast; this is why this thesis will only focus on a particular type of threat: Distributed Denial of Service (DDoS). The evaluation methodology will be around the capacity of an IPS to handle such threat.\n\nThe produced methodology is capable of generating realistic background traffic along with attacking traffic, which are DDoS attacks. Four different DDoS attacks will be used to carry out the evaluation of a chosen IPS. The evaluation metrics are the packet lost that will be evaluated on two different ways because of the selected IPS. The other metrics are the time to respond to the attack, the available bandwidth, the latency, the reliability, the CPU load, and memory load.\n\nAll experiment have been done in a real environment to ensure that the results are the more realistic possible. The selected IPS to carry out the evaluation of the methodology is the most popular and open-source Snort, which has been set-up in a Linux machine. The results shows that system is effective to handle a DDoS attack but when the rate of 6 000 pps of malicious traffic is reach Snort start to dropped malicious and legitimate packets without any differences. It also shows that the IPS could only handle traffic lower than 1Mbps.\n\nThe conclusion shows that the produces methodology permits to evaluate the mitigation capability of an IPS. The limitations of the methodology are also explained. One of the key limitations is the impossibility to aggregate the background traffic with the attacking traffic. Furthermore, the thesis shows interesting future work that could be done as the automation of the evaluation procedure to simply the evaluation of IPSs.', 'Bill Buchanan', 'B.Buchanan@napier.ac.uk', 1),
('Open Data Government As a Potential Source for Smarter Government', 'Masters', 'Business Information Technology', 'Open goverment, democracy, goverment, oman, open data, public', 'Over the past several decades, Open Government has become\na hot topic in many democratically developed countries. Open\nGovernments aim at increasing transparency, public involvement and strengthen trust among citizens.\n\nThe main purpose of this study is to evaluate the current\nsituation of open data in Oman and to identify the challenges\nand issues facing the government in order to utilise the data\nwith a clear strategy. The research methodology adopted in\nthis study is mainly qualitative through the use of interviews.\n\nThe data is gathered from officials working in Oman government entities. Omani open data policy is reviewed as a\nsecondary source to critically evaluate the clarity of the policy,\nwhether the data is up to data and whether it is following the\nbest practice.', 'Peter Cruickshank, Jyoti Bhardwaj', 'P.Cruickshank@napier.ac.uk, j.bhardwaj@napier.ac.uk', 2),
('An Investigation of Compliance with Privacy by Design in Software Engineering', 'Masters', 'Business Information Technology', 'software development,German finance, Privacy, finance,quantitative, qualitative research, German, Germany', 'The aim of this project was to find out how companies and software development in the German finance industry apply Privacy by Design. Also the practicability of checklists to test for compliance with Privacy by Design was under consideration. The self-assessment checklist for Privacy by Design by Bernsmed (2016) and the eight privacy design strategies and the accompanying patterns by Hoepman (2014) were chosen from the relevant literature as tools to conduct the research.', 'Peter Cruickshank', 'P.Cruickshank@napier.ac.uk', 3),
('Machine Learning for Algorithm Selection', 'Honors', 'Software Engineering', 'machine learning, algorithm, prediction,algorithm selection', 'This paper covers the research and implementation of two algorithm selection models. The first is built to predict a fitness score which is then used to predict the best possible algorithm. The second is built to predict the algorithm name. These predictions will be made by training machine learning models to recognise the features of a bin packing problem.\n\nThe second goal of this paper is to identify which features of a bin packing problem hold more relevance when training a machine learning model. From the fourteen features selected no feature was found to have any more relevance over another.\n\nThe algorithm selectors both worked well on the problem set used, producing final accuracies of above 85%. Analysis of the results showed that the selector that predicted a straight algorithm name produced more consistent results, but did not achieve the highest overall accuracy which has been attributed to the imbalance in the dataset', 'Emma Hart, Kevin Sim', 'e.hart@napier.ac.uk, K.Sim@napier.ac.uk ', 4),
('Addressing Student Recruitment Challenges through the use of Information Technology and Processes', 'Masters', 'Business Information Technology', 'Information technlogys', 'Following processes of marketization and expansions within the higher education sector, as well as external changes in the sphere of technology, politics and demographics, student recruitment and student recruitment teams are faced with more challenges than ever.\n\nThis has lead to the adoption of practices often observed in traditional industries, such as the adoption of Customer Relationship Management (CRM) systems in an effort to improve recruitment processes and retention.\n\nThe aim of this study is to conduct initial research into the niche area of CRM systems use in Student Recruitment teams, as well as the specific challenges faced in CRM\nsystems implementation by those teams and the methods of success measurement of CRM projects. It has been shown that universities have been widely adopting this technology over the past few years, without much research into the benefits of CRM systems in use in this respect, as well as the success teams have had with it. Research has been conducted by reviewing existing literature on CRM systems, the Higher Education Market and specific studies into this niche area. In addition to this, semi-structured interviews were undertake with members of staff of various ranks from six major institutions within the UK HE market.\nIn order to triangulate the findings, a survey questionnaire was conducted on 19 professionals working for an organisation\nfocusing on providing integrated systems for CRM teams in universities.\n\nFinally, the study concludes on a few assumptions based on the findings, as well as the identification of a previously unexpected trend that may lead universities that have\nalready been late adopters of this technology to the same mistake in the near future.\n\nThe interviews reveal very little planning in terms of future technology adoption and poor measurement of the success of existing CRM projects and whether or not the return on\ninvestment is justified, given the resources.', 'Peter Cruickshank, Ben Paechter', 'P.Cruickshank@napier.ac.uk, B.Paechter@napier.ac.uk', 5),
('Botnet Analysis and Detection', 'Honors', 'Cybersecurity and Forensics', 'Botnet, network security, security', 'Computers have become very useful tools for work, study and play. Computers can also be used in a more sinister manner; criminals can use computers to extract money and information out of businesses and computer users. They can use software known as Botnets to accomplish these goals. A Botnet is a collection of bots typically controlled by a bot master. A bot is a piece of software that conceals itself on a computer system acting on instructions received or programmed by the bot master(s). Botnets are becoming more elaborate and efficient over time and thus the use of Botnets is growing at an exponential rate, threatening the average user and businesses alike.\n\nThe aim of this thesis was to understand, design and implement a Botnet detection tool. In order to perform this task a thesis was produced which provides a detailed analysis and taxonomy of the current botnet threat. This includes botnet operations, their behaviour and how they infect computer systems. Ethical considerations were encountered in this thesis chiefly in relation to securing the virtual environment required for testing, evaluation and analysis of a real botnet. In response to this three Botnets were studied with the intention of creating a \'synthetic bot\'. The Botnets studied were Zeus, Stuxnet and, in particular, the KOOBFACE botnet on which the synthetic bot was mainly based; this bot would then be used to evaluate the detection software.\n\nThe next stage was to investigate botnet detection techniques and some existing detection tools which were available. A prototype botnet detection software, called \'Bot Shaiker\', was designed and implemented. This is in the form of an agent-based application capable of detecting specific botnet activity using network traffic and files located on the computer. Bot Shaiker is written in Microsoft C# .NET, it integrates Snort, an open source IDS, to look for botnet activity on the network and checks Windows firewall and computers registry for traces of botnets. These functions are implemented in an easy to use GUI application or can be a service running on a user\'s computer.\n\nUsing a sandboxed virtual network to evaluate Bot Shaiker and DARPA traffic, the results of the evaluation showed that the network signatures of Snort proved effective and efficient; however, the performance related heavily to the traffic volume. When receiving traffic greater than 80Mbps the performance of Snort decreases significantly which means packets can be ignored. As the application is primarily designed for an end user with access to an average Internet speed which typically falls well below this figure, this prototype would work well in most computer systems. The conclusions suggest that the prototype Bot Shaiker application is able to detect botnet activities from the network and host based techniques.', 'Rich Macfarlane, Bill Buchanan', 'R.Macfarlane@napier.ac.uk, B.Buchanan@napier.ac.uk', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project3`
--
ALTER TABLE `project3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project3`
--
ALTER TABLE `project3`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
