--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Homebrew)
-- Dumped by pg_dump version 14.5 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: contestants; Type: TABLE; Schema: public; Owner: aldopolanco
--

CREATE TABLE public.contestants (
    contestant_name text,
    age integer,
    hometown text,
    occupation text,
    season_number integer,
    finish integer,
    gender text,
    african_american bit(1),
    asian_american bit(1),
    latin_american bit(1)
);


ALTER TABLE public.contestants OWNER TO aldopolanco;

--
-- Name: season; Type: TABLE; Schema: public; Owner: aldopolanco
--

CREATE TABLE public.season (
    season_number integer,
    season_name text,
    num_contestant integer
);


ALTER TABLE public.season OWNER TO aldopolanco;

--
-- Name: tribe; Type: TABLE; Schema: public; Owner: aldopolanco
--

CREATE TABLE public.tribe (
    season_number integer,
    tribe_name text,
    size integer,
    merged integer,
    poc integer
);


ALTER TABLE public.tribe OWNER TO aldopolanco;

--
-- Data for Name: contestants; Type: TABLE DATA; Schema: public; Owner: aldopolanco
--

COPY public.contestants (contestant_name, age, hometown, occupation, season_number, finish, gender, african_american, asian_american, latin_american) FROM stdin;
Sonja Christopher	63	Walnut Creek,  CA	Musician/Retired Teacher	1	16	F	0	0	0
B.B. Andersen	64	Mission Hills,  KS	Real Estate Developer	1	15	M	0	0	0
Stacey Stillman	27	San Francisco,  CA	Attorney	1	14	F	0	0	0
Ramona Gray	29	Edison,  NJ	Biochemist	1	13	F	1	0	0
Dirk Been	23	Spring Green,  WI	Dairy Farmer	1	12	M	0	0	0
Joel Klug	27	Sherwood,  AR	Health Club Consultant	1	11	M	0	0	0
Gretchen Cordy	38	Clarksville,  TN	Teacher	1	10	F	0	0	0
Greg Buis	24	Gold Hill,  CO	Ivy League Graduate	1	9	M	0	0	0
Jenna Lewis	22	Franklin,  NH	Student	1	8	F	0	0	0
Gervase Peterson	30	Willingboro,  NJ	YMCA Basketball Coach	1	7	M	1	0	0
Colleen Haskell	23	Miami Beach,  FL	Student	1	6	F	0	0	0
Sean Kenniff	30	Carle Place,  NY	Neurologist	1	5	M	0	0	0
Susan Hawk	38	Palmyra,  WI	Truck Driver	1	4	F	0	0	0
Rudy Boesch	72	Virginia Beach,  VA	Retired NAVY Seal	1	3	M	0	0	0
Kelly Wiglesworth	22	Kernville,  CA	River Rafting Guide	1	2	F	0	0	0
Richard Hatch	39	Newport,  RI	Corporate Trainer	1	1	M	0	0	0
Debb Eaton	45	Milan,  NH	Corrections Officer	2	16	F	0	0	0
Kel Gleason	32	Fort Hood,  TX	Army Intelligence Officer	2	15	M	0	0	1
Maralyn Hershey	51	Wakefield,  VA	Retired Police Officer	2	14	F	0	0	0
Mitchell Olson	23	Union City,  NJ	Singer/Songwriter	2	13	M	0	0	0
Kimmi Kappenberg	28	Ronkonkoma,  NY	Bartender	2	12	F	0	0	0
Michael Skupin	38	White Lake,  MI	Software Publisher	2	11	M	0	0	0
Jeff Varner	34	New York,  NY	Internet Projects Manager	2	10	M	0	0	0
Alicia Calaway	32	New York,  NY	Personal Trainer	2	9	F	1	0	0
Jerri Manthey	30	Los Angeles,  CA	Aspiring Actress	2	8	F	0	0	0
Nick Brown	23	Steilacoom,  WA	Law Student	2	7	M	1	0	0
Amber Mariano	22	Beaver,  PA	Administrative Assistant	2	6	F	0	0	0
Rodger Bingham	53	Crittenden,  KY	Teacher/Farmer	2	5	M	0	0	0
Elisabeth Filarski	23	Newton,  MA	Footwear Designer	2	4	F	0	0	0
Keith Famie	40	West Bloomfield,  MI	Chef	2	3	M	0	0	0
Colby Donaldson	26	Dallas,  TX	Auto Customizer	2	2	M	0	0	0
Tina Wesson	39	Knoxville,  TN	Personal Nurse	2	1	F	0	0	0
Diane Ogden	42	Lincoln,  NE	Mail Carrier	3	16	F	0	0	0
Jessie Camacho	27	Orlando,  FL	Sheriff	3	15	F	0	0	1
Carl Bilancione	46	Winter Springs,  FL	Dentist	3	14	M	0	0	0
Linda Spencer	44	Boston,  MA	Career Counselor	3	13	F	1	0	0
Silas Gaither	23	Los Angeles,  CA	Bartender	3	12	M	0	0	0
Lindsey Richter	27	Portland,  OR	Advertising Executive	3	11	F	0	0	0
Clarence Black	24	Detroit,  MI	Basketball Coach	3	10	M	1	0	0
Kelly Goldsmith	22	San Diego,  CA	Behavior Analyst	3	9	F	0	0	0
Brandon Quinton	25	Dallas,  TX	Bartender	3	8	M	0	0	0
Frank Garrison	43	Odessa,  NY	Telephone Technician	3	7	M	0	0	0
Kim Powers	29	Conshohocken,  PA	Freelance Marketer	3	6	F	0	0	0
Teresa Cooper	42	Jackson,  GA	Flight Attendant	3	5	F	0	0	0
Tom Buchanan	46	Rich Valley,  VA	Goat Farmer	3	4	M	0	0	0
Lex van den Berghe	38	Santa Cruz,  CA	Marketing Manager	3	3	M	0	0	0
Kim Johnson	57	Oyster Bay,  NY	Retired Teacher	3	2	F	0	0	0
Ethan Zohn	27	New York,  NY	Professional Soccer Player	3	1	M	0	0	0
Peter Harkey	45	Millis,  MA	Bowling Alley Owner	4	16	M	0	0	0
Patricia Jackson	49	Lugoff,  SC	Truck Assembler	4	15	F	0	0	0
Hunter Ellis	33	La Jolla,  CA	Ex-Navy Fighter Pilot	4	14	M	0	0	0
Sarah Jones	24	Newport Beach,  CA	Account Manager	4	13	F	0	0	0
Gabriel Cade	23	Hollywood,  CA	Bartender	4	12	M	0	0	0
Gina Crews	28	Gainesville,  FL	Nature Guide	4	11	F	0	0	0
Rob Mariano	26	Canton,  MA	Construction Worker	4	10	M	0	0	0
John Carroll	36	Omaha,  NE	Nurse	4	9	M	0	0	0
Zoe Zanidakis	35	Monhegan Island,  ME	Fishing Boat Captain	4	8	F	0	0	0
Tammy Leitner	29	Mesa,  AZ	Crime Reporter	4	7	F	0	0	0
Robert DeCanio	38	College Point,  NY	Limousine Driver	4	6	M	0	0	0
Sean Rector	30	Los Angeles,  CA	Teacher	4	5	M	1	0	0
Paschal English	57	Thomaston,  GA	Judge	4	4	M	0	0	0
Kathy Vavrick-O'Brien	47	Burlington,  VT	Real Estate Agent	4	3	F	0	0	0
Neleh Dennis	21	Layton,  UT	Student	4	2	F	0	0	0
Vecepia Towery	36	Hayward,  CA	Office Manager	4	1	F	1	0	0
John Raymond	40	Slidell,  LA	Pastor	5	16	M	0	0	0
Tanya Vance	27	Kingsport,  TN	Social Worker	5	15	F	0	0	0
Jed Hildebrand	25	Dallas,  TX	Dental Student	5	14	M	0	0	0
Ghandia Johnson	33	Denver,  CO	Legal Secretary	5	13	F	1	0	0
Stephanie Dill	29	Fayetteville,  AR	Firefighter	5	12	F	0	0	0
Robb Zbacnik	23	Scottsdale,  AZ	Bartender	5	11	M	0	0	0
Shii Ann Huang	28	New York,  NY	Executive Recruiter	5	10	F	0	1	0
Erin Collins	26	Austin,  TX	Real Estate Agent	5	9	F	0	0	0
Ken Stafford	30	Brooklyn,  NY	Police Officer	5	8	M	0	0	0
Penny Ramsey	27	Plano,  TX	Pharmaceutical Saleswoman	5	7	F	0	0	0
Jake Billingsley	61	McKinney,  TX	Land Broker	5	6	M	0	0	0
Ted Rogers, Jr.	37	Durham,  NC	Software Developer	5	5	M	1	0	0
Helen Glover	47	Middletown,  RI	Navy Swim Instructor	5	4	F	0	0	0
Jan Gentry	53	Tampa,  FL	Teacher	5	3	F	0	0	0
Clay Jordan	46	Monroe,  LA	Restaurant Owner	5	2	M	0	0	0
Brian Heidik	34	Quartz Hill,  CA	Used Car Salesman	5	1	M	0	0	0
Ryan Aiken	23	Ellicott City,  MD	Model	6	16	M	0	0	0
Janet Koth	47	Manchester,  MO	Homemaker	6	15	F	0	0	0
Daniel Lue	27	Houston,  TX	Tax Accountant	6	14	M	0	1	0
JoAnna Ward	31	Orangeburg,  SC	Guidance Counselor	6	13	F	1	0	0
Jeanne Hebert	41	North Attleborough,  MA	Marketing Director	6	12	F	0	0	0
Shawna Mitchell	23	Redwood City,  CA	Retail Saleswoman	6	11	F	0	0	0
Roger Sexton	56	Valencia,  CA	Construction Company Vice President	6	10	M	0	0	0
Dave Johnson	24	Pasadena,  CA	Rocket Scientist	6	9	M	0	0	0
Deena Bennett	35	Riverside,  CA	Deputy District Attorney	6	8	F	0	0	1
Alex Bell	32	Los Angeles,  CA	Triathlon Coach	6	7	M	0	0	0
Christy Smith	24	Basalt,  CO	Children's Adventure Guide	6	6	F	0	0	0
Heidi Strobel	24	Jefferson City,  MO	Gym Teacher	6	5	F	0	0	0
Butch Lockley	50	Olney,  IL	School Principal	6	4	M	0	0	0
Rob Cesternino	24	Wantagh,  NY	Computer Projects Coordinator	6	3	M	0	0	0
Matthew von Ertfelda	33	Washington,  D.C.	Restaurant Designer	6	2	M	0	0	0
Jenna Morasca	21	Pittsburgh,  PA	Swimsuit Model	6	1	F	0	0	0
Nicole Delma	24	Hermosa Beach,  CA	Massage Therapist	7	16	F	0	0	0
Ryan Shoulders	23	Clarksville,  TN	Produce Clerk	7	15	M	0	0	0
Michelle Tesauro	22	Pittstown,  NJ	Student	7	14	F	0	0	0
Trish Dunn	42	Annapolis,  MD	Sales Executive	7	13	F	0	0	0
Shawn Cohen	28	New York,  NY	Advertising Salesman	7	12	M	0	0	0
Osten Taylor	27	Boston,  MA	Equity Trade Manager	7	11	M	1	0	0
Andrew Savage	40	Chicago,  IL	Attorney	7	10	M	0	0	0
Ryan Opray	31	Los Gatos,  CA	Electrician	7	9	M	0	0	0
Rupert Boneham	39	Indianapolis,  IN	Troubled Teens Mentor	7	8	M	0	0	0
Tijuana Bradley	27	St. Louis,  MO	Pharmaceutical Saleswoman	7	7	F	1	0	0
Christa Hastie	24	Los Angeles,  CA	Computer Programmer	7	6	F	0	0	0
Burton Roberts	31	San Francisco,  CA	Marketing Executive	7	5	M	0	0	0
Darrah Johnson	22	Liberty,  MS	Mortician	7	4	F	0	0	0
Jon Dalton	29	Danville,  VA	Art Consultant	7	3	M	0	0	0
Lillian Morris	51	Cincinnati,  OH	Scoutmaster	7	2	F	0	0	0
Sandra Diaz-Twine	29	Fort Lewis,  WA	Office Assistant	7	1	F	0	0	1
Tina Wesson	42	Knoxville,  TN	Motivational Speaker	8	18	F	0	0	0
Rudy Boesch	75	Virginia Beach,  VA	Retired Navy Seal	8	17	M	0	0	0
Jenna Morasca	22	Pittsburgh,  PA	Swimsuit Model	8	16	F	0	0	0
Rob Cesternino	25	Wantagh,  NY	Computer Projects Coordinator	8	15	M	0	0	0
Richard Hatch	42	Newport,  RI	Corporate Trainer	8	14	M	0	0	0
Susan Hawk	42	Palmyra,  WI	Waitress/Bartender	8	13	F	0	0	0
Colby Donaldson	29	Dallas,  TX	Actor	8	12	M	0	0	0
Ethan Zohn	30	Lexington,  MA	Motivational Speaker	8	11	M	0	0	0
Jerri Manthey	33	Los Angeles,  CA	Actress	8	10	F	0	0	0
Lex van den Berghe	40	Santa Cruz,  CA	Freelance Writer	8	9	M	0	0	0
Kathy Vavrick-O'Brien	49	Burlington,  VT	Real Estate Agent	8	8	F	0	0	0
Alicia Calaway	35	New York,  NY	Health and Fitness Reporter	8	7	F	1	0	0
Shii Ann Huang	30	New York,  NY	Executive Recruiter	8	6	F	0	1	0
Tom Buchanan	48	Rich Valley,  VA	Goat Farmer	8	5	M	0	0	0
Rupert Boneham	40	Indianapolis,  IN	Troubled Teens Mentor	8	4	M	0	0	0
Jenna Lewis	26	Franklin,  NH	Actress	8	3	F	0	0	0
Rob Mariano	28	Canton,  MA	Construction Worker	8	2	M	0	0	0
Amber Mariano	25	Beaver,  PA	Administrative Assistant	8	1	F	0	0	0
Brook Geraghty	33	Huntington Beach,  CA	Document Manager	9	18	M	0	0	0
Dolly Neely	25	Mercer,  PA	Sheep Farmer	9	17	F	0	0	0
John Palyok	31	Los Angeles,  CA	Sales Manager	9	16	M	0	0	0
Mia Galeotalanza	30	Toms River,  NJ	Bookkeeper	9	15	F	0	0	0
Brady Finta	33	Huntington Beach,  CA	FBI Agent	9	14	M	0	0	0
Travis Sampson	33	Blountville,  TN	Security Officer	9	13	M	0	0	0
Lisa Keiffer	44	New Orleans,  LA	Real State Agent	9	12	F	0	0	0
John Kenney	22	Los Angeles,  CA	Mechanical Bull Operator/Model	9	11	M	0	0	0
Rory Freeman	35	Des Moines,  IA	Housing Case Manager	9	10	M	1	0	0
Lea Masters	40	Columbia,  SC	Drill Sergeant	9	9	M	0	0	0
Chad Crittenden	35	Oakland,  CA	Teacher	9	8	M	0	0	0
Leann Slaby	35	Kansasville,  WI	Equity Research Assistant	9	7	F	0	0	0
Ami Cusack	31	Lakewood,  CO	Coffee Barista	9	6	F	0	0	0
Julie Berry	23	Gorham,  ME	Youth Mentor	9	5	F	0	0	0
Eliza Orlins	21	Syracuse,  NY	Pre-Law Student	9	4	F	0	0	0
Scout Cloud Lee	59	Stillwater,  OK	Rancher	9	3	F	0	0	0
Twila Tanner	41	Marshall,  MO	Highway Repair Worker	9	2	F	0	0	0
Chris Daugherty	33	South Vienna,  OH	Highway Construction Worker	9	1	M	0	0	0
Jonathan Libby	23	Dallas,  TX	Sales & Marketing Associate	10	20	M	0	0	0
Wanda Shirk	55	Ulysses,  PA	English Teacher	10	19	F	0	0	0
Jolanda Jones	39	Houston,  TX	Attorney	10	18	F	1	0	0
Ashlee Ashby	22	Easley,  SC	Student	10	17	F	0	0	0
Jeff Wilson	21	Ventura,  CA	Personal Trainer	10	16	M	0	0	0
Kim Mullen	25	Huber Heights,  OH	Graduate Student	10	15	F	0	0	0
Willard Smith	57	Bellevue,  WA	Attorney	10	14	M	0	0	0
Angie Jakusz	24	New Orleans,  LA	Bartender	10	13	F	0	0	0
James Miller	33	Mobile,  AL	Steelworker	10	12	M	0	0	0
Ibrehem Rahman	27	Birmingham,  AL	Model	10	11	M	1	0	0
Bobby Jon Drinkard	27	Troy,  AL	Waiter	10	10	M	0	0	0
Coby Archa	32	Dallas,  TX	Hairdresser	10	9	M	0	0	0
Janu Tornell	39	Las Vegas,  NV	Vegas Showgirl	10	8	F	0	0	1
Stephenie LaGrossa	25	Glenolden,  PA	Pharmaceutical Sales Representative	10	7	F	0	0	0
Gregg Carey	27	Chicago,  IL	Business Consultant	10	6	M	0	0	0
Caryn Groedel	46	Solon,  OH	Civil Rights Attorney	10	5	F	0	0	0
Jennifer Lyon	32	Encino,  CA	Nanny	10	4	F	0	0	0
Ian Rosenberger	23	Key Largo,  FL	Dolphin Trainer	10	3	M	0	0	0
Katie Gallagher	29	Merced,  CA	Advertising Executive	10	2	F	0	0	0
Tom Westman	41	Sayville,  NY	Firefighter	10	1	M	0	0	0
Jim Lynch	63	Northglenn,  CO	Retired Fire Captain	11	18	M	0	0	0
Morgan McDevitt	21	Decatur,  IL	Magician's Assistant	11	17	F	0	0	0
Brianna Varela	21	Edmonds,  WA	Retail Salesperson	11	16	F	0	0	1
Brooke Struck	26	Hood River,  OR	Law Student	11	15	F	0	0	0
Blake Towsley	24	Dallas,  TX	Real Estate Broker	11	14	M	0	0	0
Margaret Bobonich	43	Chardon,  OH	Nursing Practitioner	11	13	F	0	0	0
Brian Corridan	22	New York,  NY	Ivy League Student	11	12	M	0	0	0
Amy O'Hara	39	Revere,  MA	Police Sergeant	11	11	F	0	0	0
Brandon Bellinger	22	Manhattan,  KS	Farmer	11	10	M	0	0	0
Bobby Jon Drinkard	27	Troy,  AL	Waiter	11	9	M	0	0	0
Jamie Newton	24	North Hollywood,  CA	Water Skiing Instructor	11	8	M	0	0	0
Gary Hogeboom	46	Grand Haven,  MI	Former NFL Quarterback	11	7	M	0	0	0
Judd Sergeant	34	Ridgefield,  NJ	Hotel Doorman	11	6	M	0	0	0
Cindy Hall	31	Naples,  FL	Zookeeper	11	5	F	0	0	0
Lydia Morales	42	Lakewood,  WA	Fishmonnger	11	4	F	0	0	1
Rafe Judkins	22	Providence,  RI	Wilderness Guide	11	3	M	0	0	0
Stephenie LaGrossa	25	Philadelphia,  PA	Pharmaceutical Sales Representative	11	2	F	0	0	0
Danni Boatwright	30	Tonganoxie,  KS	Sports Radio Host	11	1	F	0	0	0
Tina Scheer	45	Hayward,  WI	Lumberjill	12	16	F	0	0	0
Melinda Hyder	32	Sevierville,  TN	Singer/Entertainer	12	15	F	0	0	0
Misty Giles	24	Dallas,  TX	Missile Engineer	12	14	F	0	0	0
Ruth Marie Milliman	48	Greenville,  SC	Property Developer	12	13	F	0	0	0
Bobby Mason	32	Los Angeles,  CA	Attorney	12	12	M	1	0	0
Dan Barry	52	South Hadley,  MA	Astronaut	12	11	M	0	0	0
Nick Stanbury	25	Tempe,  AZ	Financial Salesman	12	10	M	0	0	0
Austin Carty	24	High Point,  NC	Writer	12	9	M	0	0	0
Sally Schumann	27	Chicago,  IL	Social Worker	12	8	F	0	0	0
Bruce Kanegai	58	Simi Valley,  CA	Art Teacher	12	7	M	0	1	0
Courtney Marit	31	Los Angeles,  CA	Fire Dancer	12	6	F	0	0	0
Shane Powers	35	Los Angeles,  CA	Marketing Executive	12	5	M	0	0	0
Cirie Fields	34	Walterboro,  SC	Nurse	12	4	F	1	0	0
Terry Deitz	46	Simsbury,  CT	Pilot	12	3	M	0	0	0
Danielle DiLorenzo	24	Pompano Beach,  FL	Medical Sales Representative	12	2	F	0	0	0
Aras Baskauskas	24	Santa Monica,  CA	Yoga Instructor	12	1	M	0	0	0
Sekou Bunch	46	Los Angeles,  CA	Jazz Musician	13	20	M	1	0	0
Billy Garcia	36	New York,  NY	Heavy Metal Musician	13	19	M	0	0	1
Cecilia Mansilla	29	Oakland,  CA	Risk Consultant	13	18	F	0	0	1
J.P. Calderon	30	Marina Del Rey,  CA	Profession Volleyball Player	13	17	M	0	0	1
Stephannie Favor	35	Columbia,  SC	Nursing Student	13	16	F	1	0	0
Cao Boi Bui	42	Christiansburg,  VA	Nail Salon Manager	13	15	M	0	1	0
Cristina Coria	35	Los Angeles,  CA	Police Officer	13	14	F	0	0	1
Jessica Smith	27	Chico,  CA	Roller Girl	13	13	F	0	0	0
Brad Virata	27	Los Angeles,  CA	Fashion Director	13	12	M	0	1	0
Rebecca Borman	34	Laurelton,  NY	Makeup Artist	13	11	F	1	0	0
Jenny Guzon-Bae	36	Lake Forest,  IL	Real Estate Agent	13	10	F	0	1	0
Nate Gonzalez	26	Los Angeles,  CA	Shoe Salesman	13	9	M	1	0	1
Candice Cody	23	Fayetteville,  NC	Pre-Med Student	13	8	F	0	0	0
Jonathan Penner	44	Los Angeles,  CA	Writer	13	7	M	0	0	0
Parvati Shallow	24	Los Angeles,  CA	Boxer	13	6	F	0	0	0
Adam Gentry	28	San Diego,  CA	Copier Sales Executive	13	5	M	0	0	0
Sundra Oakley	31	Los Angeles,  CA	Actress	13	4	F	1	0	0
Becky Lee	28	Washington,  D.C.	Attorney	13	3	F	0	1	0
Ozzy Lusth	25	Venice,  CA	Waiter	13	2	M	0	0	1
Yul Kwon	31	San Mateo,  CA	Management Consultant	13	1	M	0	1	0
Jessica deBen	27	Los Angeles,  CA	Fashion Stylist	14	19	F	0	0	0
Erica Durousseau	27	Lake Charles,  LA	Non-Profit Fundraiser	14	18	F	1	0	0
Sylvia Kwan	52	Ross,  CA	Architect	14	17	F	0	1	0
Gary Stritesky	55	Ramsey,  MN	School Bus Driver	14	16	M	0	0	0
Liliana Gomez	25	Oxnard,  CA	Loan Officer	14	15	F	0	0	1
Rita Verreos	38	San Antonio,  TX	Single Mother	14	14	F	0	0	1
Anthony Robinson	32	Compton,  CA	Expert Witness Locator	14	13	M	1	0	0
Rocky Reid	28	Los Angeles,  CA	Bartender	14	12	M	0	0	0
Lisi Linares	36	Los Angeles,  CA	Customer Service Representative	14	11	F	0	0	1
Michelle Yi	23	Cincinnati,  OH	Student	14	10	F	0	1	0
Edgardo Rivera	28	Miami Beach,  FL	Advertising Executive	14	9	M	0	0	1
Mookie Lee	25	Chicago,  IL	Business Consultant	14	8	M	0	1	0
Alex Angarita	28	Los Angeles,  CA	Attorney	14	7	M	0	0	1
Stacy Kimball	27	Boulder,  CO	Web Producer	14	6	F	0	1	0
Boo Bernis	34	Lafayette,  LA	Construction Worker	14	5	M	0	0	0
Yau-Man Chan	54	Martinez,  CA	Internet Technology Director	14	4	M	0	1	0
Cassandra Franklin	42	Los Angeles,  CA	College Administrator	14	2	F	1	0	0
Dreamz Herd	25	Wilmington,  NC	Cheerleading Coach	14	2	M	1	0	0
Earl Cole	35	Santa Monica,  CA	Advertising Executive	14	1	M	1	0	0
Chicken Morris	47	Marion,  VA	Chicken Farmer	15	16	M	0	0	0
Ashley Massaro	28	East Northport,  NY	Professional Wrestler	15	15	F	0	0	0
Leslie Nease	38	Tega Cay,  SC	Christian Radio Host	15	14	F	0	0	0
Dave Cruser	37	Simi Valley,  CA	Former Model	15	13	M	0	0	0
Aaron Reisberger	32	Venice,  CA	Surfing Instructor	15	12	M	0	0	0
Sherea Lloyd	26	Atlanta,  GA	Elementary Teacher	15	11	F	1	0	0
Jaime Dugan	22	Columbia,  SC	Student	15	10	F	0	0	0
Jean-Robert Bellande	36	Las Vegas,  NV	Profession Poker Player	15	9	M	0	0	0
Frosti Zernow	20	Chicago,  IL	Student/Athlete	15	8	M	0	1	0
James Clement	30	Lafayette,  LA	Gravedigger	15	7	M	1	0	0
Erik Huffman	26	Nashville,  TN	Musician	15	6	M	0	0	0
Peih-Gee Law	29	Marina Del Rey,  CA	Jeweler	15	5	F	0	1	0
Denise Martin	40	Douglas,  MA	School Lunch Lady	15	4	F	0	0	0
Amanda Kimmel	23	Kalispell,  MT	Hiking Guide	15	3	F	0	0	0
Courtney Yates	26	New York,  NY	Waitress	15	2	F	0	0	0
Todd Herzog	22	Pleasant Grove,  UT	Flight Attendant	15	1	M	0	0	0
Jon Dalton	33	Danville,  VA	Art Consultant	16	20	M	0	0	0
Mary Sartain	29	Emeryville,  CA	Real Estate Manager	16	19	F	0	0	0
Yau-Man Chan	55	Martinez,  CA	Internet Technology Director	16	18	M	0	1	0
Mikey Bortone	34	Los Angeles,  CA	Aspiring Writer	16	17	M	0	0	0
Joel Anderson	32	Avondale,  AZ	Firefighter	16	16	M	0	0	0
Jonathan Penner	45	Los Angeles,  CA	Writer	16	15	M	0	0	0
Chet Welch	48	Ford City,  PA	Pageant Coach	16	14	M	0	0	0
Kathy Sleckman	45	Glen Ellyn,  IL	Golf Course Vendor	16	13	F	0	0	0
Tracy Hughes-Wolf	43	Fredericksburg,  VA	Residential Builder	16	12	F	0	0	0
Ami Cusack	34	Golden,  CO	Nanny	16	11	F	0	0	0
Eliza Orlins	25	New York,  NY	Law School Student	16	10	F	0	0	0
Ozzy Lusth	26	Venice,  CA	Photographer	16	9	M	0	0	1
Jason Siska	22	Fox River Grove,  IL	Gymnastics Coach	16	8	M	0	0	0
James Clement	30	Lafayette,  LA	Gravedigger	16	7	M	1	0	0
Alexis Jones	24	Beverly Hills,  CA	Motivational Speaker	16	6	F	0	0	0
Erik Reichenbach	22	Pinckney,  MI	Ice Cream Scooper	16	5	M	0	0	0
Natalie Bolton	32	Los Angeles,  CA	Personal Trainer	16	4	F	0	1	0
Cirie Fields	37	Norwalk,  CT	Nurse	16	3	F	1	0	0
Amanda Kimmel	23	Los Angeles,  CA	Aspiring Designer	16	2	F	0	0	0
Parvati Shallow	25	Los Angeles,  CA	Charity Organizer	16	1	F	0	0	0
Michelle Chase	24	Los Angeles,  CA	Music Producer	17	18	F	0	0	0
Gillian Larson	61	Temecula,  CA	Retired Nurse	17	17	F	0	0	0
Paloma Soto-Castillo	24	Downey,  CA	Student	17	16	F	0	0	1
Jacquie Berg	25	Santa Barbara,  CA	Medical Saleswoman	17	15	F	0	0	0
GC Brown	26	Portland,  OR	Maintenance Man	17	14	M	1	0	0
Kelly Czarnecki	22	Buffalo Grove,  IL	Retail Saleswoman	17	13	F	0	0	0
Ace Gordon	27	Naples,  FL	Jewelry Salesman/Photographer	17	12	M	0	0	0
Dan Kay	32	Boston,  MA	Attorney	17	11	M	0	0	0
Marcus Lehman	28	Atlanta,  GA	Doctor	17	10	M	0	0	1
Charlie Herschel	29	New York,  NY	Attorney	17	9	M	0	0	0
Randy Bailey	49	Eagle Rock,  MO	Wedding Videographer	17	8	M	0	0	0
Corinne Kaplan	29	Los Angeles,  CA	Pharmaceutical Saleswoman	17	7	F	0	0	0
Crystal Cox	29	Durham,  NC	Olympic Gold Medalist	17	6	F	1	0	0
Ken Hoang	22	Westminster,  CA	Professional Gamer	17	5	M	0	1	0
Matty Whitmore	29	Pacific Palisades,  CA	Personal Trainer	17	4	M	0	0	0
Sugar Kiper	29	Brooklyn,  NY	Pin-Up Model	17	3	F	0	0	0
Susie Smith	47	Charles City,  IA	Hairdresser	17	2	F	0	0	1
Bob Crowley	57	Portland,  ME	Physics Teacher	17	1	M	0	0	0
Carolina Eastwood	26	West Hollywood,  CA	Bartender	18	16	F	0	0	1
Candace Smith	31	Dayton,  OH	Attorney	18	15	F	1	0	0
Jerry Sims	49	Rock Hill,  SC	U.S. Army Sergeant	18	14	M	1	0	0
Sandy Burgin	53	Louisville,  KY	Bus Driver	18	13	F	0	0	0
Spencer Duhm	19	Lakeland,  FL	Student	18	12	M	0	0	0
Sydney Wheeler	24	Raleigh,  NC	Model	18	11	F	0	0	0
Joe Dowdle	26	Austin,  TX	Real Estate Salesman	18	10	M	0	0	0
Brendan Synnott	30	New York,  NY	Entrepreneur	18	9	M	0	0	0
Tyson Apostol	29	Lindon,  UT	Professional Cyclist	18	8	M	0	0	0
Sierra Reed	23	Los Angeles,  CA	Model	18	7	F	0	0	0
Debbie Beebe	46	Auburn,  AL	School Principal	18	6	F	0	0	0
Coach Wade	37	Bolivar,  MO	Soccer Coach/Musician	18	5	M	0	0	0
Taj Johnson-George	37	Nashville,  TN	Former Pop Star	18	4	F	1	0	0
Erinn Lobdell	26	Waukesha,  WI	Hairdresser	18	3	F	0	0	0
Stephen Fishbach	29	New York,  NY	Corporate Consultant	18	2	M	0	0	0
J.T. Thomas	24	Samson,  AL	Cattle Rancher	18	1	M	0	0	0
Marisa Calihan	26	Cincinnati,  OH	Student	19	20	F	0	0	0
Mike Borassi	62	Marina del Rey,  CA	Personal Chef	19	19	M	0	0	0
Betsy Bolan	48	Campton,  NH	Police Officer	19	18	F	0	0	0
Ben Browning	28	Los Angeles,  CA	Bar Manager	19	17	M	0	0	0
Yasmin Giles	33	Los Angeles,  CA	Hairstylist	19	16	F	1	0	0
Ashley Trainer	22	Maple Grove,  MN	Spa Saleswoman	19	15	F	0	0	0
Russell Swan	42	Glenside,  PA	Attorney	19	14	M	1	0	0
Liz Kim	33	New York,  NY	Urban Planner	19	13	F	0	1	0
Erik Cardona	28	Ontario,  CA	Bartender	19	12	M	0	0	1
Kelly Sharbaugh	25	Los Angeles,  CA	Hairstylist	19	11	F	0	0	0
Laura Morett	39	Salem,  OR	Office Manager	19	10	F	0	0	0
John Fincher	25	Los Angeles,  CA	Rocket Scientist	19	9	M	0	0	1
Dave Ball	38	Los Angeles,  CA	Fitness Instructor	19	8	M	0	0	0
Monica Padilla	25	San Diego,  CA	Law Student	19	7	F	0	0	1
Shambo Waters	45	Renton,  WA	Saleswoman	19	6	F	0	0	0
Jaison Robinson	28	Chicago,  IL	Law Student	19	5	M	1	0	0
Brett Clouser	23	Los Angeles,  CA	T-shirt Designer	19	4	M	0	0	0
Mick Trimming	33	Los Angeles,  CA	Doctor	19	3	M	0	0	0
Russell Hantz	36	Dayton,  TX	Oil Company Owner	19	2	M	0	0	0
Natalie White	26	Van Buren,  AR	Pharmaceutical Saleswoman	19	1	F	0	0	0
Sugar Kiper	30	Los Angeles,  CA	Pin-Up Model	20	20	F	0	0	0
Stephenie LaGrossa	29	Philadelphia,  PA	Pharmaceutical Sales Representative	20	19	F	0	0	0
Randy Bailey	50	Eagle Rock,  MO	Wedding Videographer	20	18	M	0	0	0
Cirie Fields	39	Norwalk,  CT	Nurse	20	17	F	1	0	0
Tom Westman	45	Sayville,  NY	Motivational Speaker	20	16	M	0	0	0
Tyson Apostol	29	Lindon,  UT	Former Professional Cyclist	20	15	M	0	0	0
James Clement	32	Lafayette,  LA	Gravedigger	20	14	M	1	0	0
Rob Mariano	33	Pensacola,  FL	Construction Worker	20	13	M	0	0	0
Coach Wade	38	Los Angeles,  CA	Soccer Coach/Musician	20	12	M	0	0	0
Courtney Yates	29	New York,  NY	Waitress	20	11	F	0	0	0
J.T. Thomas	25	Samson,  AL	Cattle Rancher	20	10	M	0	0	0
Amanda Kimmel	25	Los Angeles,  CA	Aspiring Designer	20	9	F	0	0	0
Candice Cody	27	Washington,  DC	Physician	20	8	F	0	0	0
Danielle DiLorenzo	28	Pompano Beach,  FL	Medical Sales Representative	20	7	F	0	0	0
Rupert Boneham	45	Indianapolis,  IN	Troubled Teens Mentor	20	6	M	0	0	0
Colby Donaldson	35	Dallas,  TX	Actor	20	5	M	0	0	0
Jerri Manthey	38	Los Angeles,  CA	Actress	20	4	F	0	0	0
Russell Hantz	36	Dayton,  TX	Oil Company Owner	20	3	M	0	0	0
Parvati Shallow	27	Los Angeles,  CA	Charity Organizer	20	2	F	0	0	0
Sandra Diaz-Twine	35	Fayetteville,  NC	Office Assistant	20	1	F	0	0	1
Wendy DeSmidt-Kohlhoff	48	Fromberg,  MT	Goat Rancher	21	20	F	0	0	0
Shannon Elkins	30	Lafayette,  LA	Pest Control Company Owner	21	19	M	0	0	0
Jimmy Johnson	67	Islamorada,  FL	Former NFL Coach	21	18	M	0	0	0
Jimmy Tarantino	48	Gloucester,  MA	Commercial Fisherman	21	17	M	0	0	0
Tyrone Davis	42	Inglewood,  CA	Firefighter	21	16	M	1	0	0
Kelly Bruno	26	Durham,  NC	Medical Student	21	15	F	0	0	0
Yve Rojas	41	Kansas City,  MO	Homemaker	21	14	F	0	0	1
Jill Behm	43	Erie,  PA	ER Doctor	21	13	F	0	0	0
Alina Wilson	23	Downey,  CA	Art Student	21	12	F	0	0	0
Marty Piombo	48	Mill Valley,  CA	Technology Executive	21	11	M	0	0	0
Brenda Lowe	27	Miami,  FL	Paddleboard Company Owner	21	10	F	0	1	1
NaOnka Mixon	27	Los Angeles,  CA	P.E. Teacher	21	9	F	1	0	0
Kelly Shinn	20	Mesa,  AZ	Nursing Student	21	8	F	0	0	0
Benry Henry	24	Los Angeles,  CA	Club Promoter	21	7	M	0	0	0
Jane Bright	56	Jackson Springs,  NC	Dog Trainer	21	6	F	0	0	0
Dan Lembo	63	Watermill,  NY	Real Estate Executive	21	5	M	0	0	0
Holly Hoffman	44	Eureka,  SD	Swim Coach	21	4	F	0	0	0
Zeke Smith	28	Brooklyn,  NY	Asset Manager	33	9	M	0	0	0
Sash Lenahan	30	New York,  NY	Real Estate Broker	21	3	M	1	0	0
Chase Rice	24	Fairview,  NC	Professional Racecar Jackman	21	2	M	0	0	0
Fabio Birza	21	Venice,  CA	Student	21	1	M	0	0	0
Francesca Hogi	36	Washington,  DC	Attorney	22	18	F	1	0	0
Russell Hantz	38	Dayton,  TX	Oil Company Owner	22	17	M	0	0	0
Kristina Kell	46	Malibu,  CA	Law Student	22	16	F	0	0	0
Krista Klumpp	25	Columbia,  SC	Pharmaceutical Representative	22	15	F	0	0	0
Stephanie Valencia	26	Long Beach,  CA	Waitress	22	14	F	0	0	1
Sarita White	36	Santa Monica,  CA	Visual Effects Producer	22	13	F	0	0	0
David Murphy	31	West Hollywood,  CA	Defense Attorney	22	12	M	0	0	0
Julie Wolfe	50	Oceanside,  CA	Firefighter	22	11	F	0	0	0
Steve Wright	51	Huntington Beach,  CA	Ex-NFL Player	22	10	M	0	0	0
Ralph Kiser	45	Lebanon,  VA	Farmer	22	9	M	0	0	0
Grant Mattos	29	West Hollywood,  CA	Ex-NFL Player	22	8	M	0	0	0
Matt Elrod	22	Nashville,  TN	Pre-Med Student	22	7	M	0	0	0
Mike Chiesl	31	Del Mar,  CA	Iraq War Veteran	22	6	M	0	0	0
Andrea Boehlke	21	Random Lake,  WI	Student	22	5	F	0	0	0
Ashley Underwood	25	Benton,  ME	Nurse	22	4	F	0	0	0
Natalie Tenerelli	19	Acton,  CA	Professional Dancer	22	3	F	0	0	0
Phillip Sheppard	52	Santa Monica,  CA	Former Federal Agent	22	2	M	1	0	0
Rob Mariano	34	Pensacola,  FL	Construction Worker	22	1	M	0	0	0
Semhar Tadesse	24	Los Angeles,  CA	Spoken Word Artist	23	18	F	1	0	0
Mark Caruso	48	Forest Hills,  NY	Retired NYPD Detective	23	17	M	0	0	0
Stacey Powell	44	Grand Prairie,  TX	Mortician	23	16	F	1	0	0
Elyse Umemoto	27	Las Vegas,  NV	Dance Team Manager	23	15	F	0	1	1
Mikayla Wingle	22	Tampa,  FL	Lingerie Football Player	23	14	F	0	0	0
Christine Shields Markoski	39	Merrick,  NY	Teacher	23	13	F	0	0	1
Jim Rice	35	Denver,  CO	Medical Marijuana Dispenser	23	12	M	0	0	0
Keith Tollefson	26	Edina,  MN	Water Treatment Technician	23	11	M	0	0	0
Dawn Meehan	41	South Jordan,  UT	English Profressor	23	10	F	0	0	0
Whitney Duncan	26	Nashville,  TN	Country Music Singer	23	9	F	0	0	0
John Cochran	24	Washington,  D.C.	Harvard Law Student	23	8	M	0	0	0
Edna Ma	35	Los Angeles,  CA	Anesthesiologist	23	7	F	0	1	0
Brandon Hantz	19	Katy,  TX	Oil Tanker Crewman	23	6	M	0	0	0
Rick Nelson	51	Aurora,  UT	Rancher	23	5	M	0	0	0
Ozzy Lusth	30	Venice,  CA	Photographer	23	4	M	0	0	1
Albert Destrade	26	Plantation,  FL	Baseball/Dating Coach	23	3	M	1	0	1
Coach Wade	39	Susanville,  CA	Soccer Coach/Musician	23	2	M	0	0	0
Sophie Clarke	22	Willsboro,  NY	Medical Student	23	1	F	0	0	0
Kourtney Moon	29	Austin,  TX	Motorcycle Repairwoman	24	18	F	0	0	0
Nina Acosta	51	Clovis,  CA	Retired LAPD Officer	24	17	F	0	0	0
Matt Quinlan	33	San Francisco,  CA	Attorney	24	16	M	0	0	0
Bill Posley	28	Venice,  CA	Stand-Up Comedian	24	15	M	1	0	0
Monica Culpepper	41	Tampa,  FL	Ex-NFL Player's Wife	24	14	F	0	0	0
Colton Cumbie	21	Monroeville,  AL	Student	24	13	M	0	0	0
Jonas Otsuji	37	Lehi,  UT	Sushi Chef	24	12	M	0	1	0
Michael Jefferson	30	Seattle,  WA	Banker	24	11	M	0	0	0
Jay Byars	25	Gaffney,  SC	Model	24	10	M	0	0	0
Leif Manson	27	San Diego,  CA	Phlebotomist	24	9	M	0	0	0
Troyzan Robertson	50	Miami,  FL	Swimsuit Photographer	24	8	M	0	0	0
Kat Edorsson	22	Orlando,  FL	Timeshare Representative	24	7	F	0	0	0
Tarzan Smith	64	Houston,  TX	Plastic Surgeon	24	6	M	0	0	0
Alicia Rosa	25	Chicago,  IL	Special Education Teacher	24	5	F	0	0	1
Christina Cha	29	West Hollywood,  CA	Career Consultant	24	4	F	0	1	0
Chelsea Meissner	26	Charleston,  SC	Medical Saleswoman	24	3	F	0	0	0
Sabrina Thompson	33	Brooklyn,  NY	High School Teacher	24	2	F	1	0	0
Kim Spradlin-Wolfe	29	San Antonio,  TX	Bridal Shop Owner	24	1	F	0	0	0
Zane Knight	28	Danville,  VA	Tire Repairman	25	18	M	0	0	0
Roxy Morris	28	Brooklyn,  NY	Seminary Student	25	17	F	1	0	0
Angie Layton	20	Provo,  UT	Model/Student	25	16	F	0	0	0
Russell Swan	45	Glenside,  PA	Attorney	25	15	M	1	0	0
Dana Lambert	32	Winston-Salem,  NC	Cosmetologist	25	14	F	0	0	0
Sarah Dawson	28	Silver Spring,  MD	Insurance Saleswoman	25	13	F	1	0	0
Katie Hanson	22	Newark,  DE	Former Miss Delaware	25	12	F	0	0	0
R.C. Saint-Amour	27	New York,  NY	Investment Banker	25	11	F	0	0	0
Jeff Kent	44	Austin,  TX	Former MLB Player	25	10	M	0	0	0
Artis Silvester	53	Terrytown,  LA	Computer Engineer	25	9	M	1	0	0
Pete Yurkowski	24	Holmdel,  NJ	Engineer Graduate/Model	25	8	M	0	0	0
Jonathan Penner	50	Los Angeles,  CA	Writer	25	7	M	0	0	0
Carter Williams	24	Shawnee,  KS	Track Coach	25	6	M	0	0	0
Abi-Maria Gomes	32	Los Angeles,  CA	Business Student	25	5	F	0	0	1
Malcolm Freberg	25	Hermosa Beach,  CA	Bartender	25	4	M	0	0	0
Lisa Whelchel	49	Dallas,  TX	Former TV Teen Star	25	2	F	0	0	0
Brad Reese	50	Shawnee,  WY	Rancher	41	15	M	0	0	0
Michael Skupin	50	White Lake,  MI	Professional Speaker	25	2	M	0	0	0
Denise Stapley	41	Cedar Rapids,  IA	Sex Therapist	25	1	F	0	0	0
Francesca Hogi	38	Brooklyn,  NY	Attorney	26	20	F	1	0	0
Allie Pohevitz	25	Oceanside,  NY	Bartender	26	19	F	0	0	0
Hope Driskill	23	Jefferson City,  MO	Pre-Law Student	26	18	F	0	0	0
Shamar Thomas	27	Brooklyn,  NY	Iraq War Veteran	26	17	M	1	0	0
Laura Alexander	23	Washington DC	Administrative Officer	26	16	F	0	0	0
Brandon Hantz	21	Katy,  TX	Chemical Disposal	26	15	M	0	0	0
Matt Bischoff	38	Cincinnati,  OH	BMX Bike Salesman	26	14	M	0	0	0
Julia Landauer	21	Stanford,  CA	Racecar Driver	26	13	F	0	0	0
Corinne Kaplan	33	Los Angeles,  CA	Pharmaceutical Sales	26	12	F	0	0	0
Michael Snow	44	New York,  NY	Event Planner	26	11	M	0	0	0
Phillip Sheppard	54	Santa Monica,  CA	Software Sales	26	10	M	1	0	0
Malcolm Freberg	26	Hermosa Beach,  CA	Bartender	26	9	M	0	0	0
Reynold Toepfer	30	San Francisco,  CA	Real Estate Salesman	26	8	M	0	0	0
Andrea Boehlke	23	New York,  NY	Entertainment Host and Writer	26	7	F	0	0	0
Brenda Lowe	30	Miami,  FL	Paddleboard Company Owner	26	6	F	0	1	1
Erik Reichenbach	27	Santa Clarita,  CA	Comic Book Artist	26	5	M	0	0	0
Eddie Fox	23	East Brunswick,  NJ	Fireman/EMT	26	4	M	0	0	0
Sherri Biethman	41	Boise,  ID	Fast Food Franchisee	26	2	F	0	0	0
Dawn Meehan	42	South Jordan,  UT	English professor	26	2	F	0	0	0
John Cochran	25	Washington DC	Harvard Law Student	26	1	M	0	0	0
Rupert Boneham	49	Indianapolis,  IN	Troubled Teens Mentor	27	20	M	0	0	0
Colton Cumbie	22	Monroeville,  AL	Student Teacher	27	19	M	0	0	0
Rachel Foulger	33	Orem,  UT	Cocktail Waitress/Graphic Designer	27	18	F	0	0	0
Marissa Peterson	21	Chapel Hill,  NC	Student	27	17	F	1	0	0
Candice Cody	30	Washington DC	Physician	27	16	F	0	0	0
Brad Culpepper	44	Tampa,  FL	Attorney/Retired NFL Player	27	15	M	0	0	0
Kat Edorsson	23	Orlando,  FL	Full-Time Student/Sales	27	14	F	0	0	0
John Cody	30	Washington DC	Physician/Army Orthopedic Surgery Resident	27	13	M	0	0	0
Laura Boneham	44	Indianapolis,  IN	Merchandiser	27	12	F	0	0	0
Aras Baskauskas	31	Santa Monica,  CA	Musician	27	11	M	0	0	0
Vytas Baskauskas	33	Santa Monica,  CA	Yoga Instructor/Math Professor	27	10	M	0	0	0
Caleb Bankston	26	Crossville,  AL	Post Office Manager/Farmer	27	9	M	0	0	0
Katie Collins	25	New York,  NY	Hedge Fund Support	27	8	F	0	0	0
Hayden Moss	27	Tempe,  AZ	Real Estate	27	7	M	0	0	0
Laura Morett	43	Salem,  OR	Fitness Instructor	27	6	F	0	0	0
Ciera Eastin	24	Salem,  OR	Cosmetology Student	27	5	F	0	0	0
Tina Wesson	52	Knoxville,  TN	Motivational Speaker	27	4	F	0	0	0
Gervase Peterson	43	Willingboro,  NJ	Cigar Lounge Owner	27	3	M	1	0	0
Monica Culpepper	42	Tampa,  FL	Homemaker	27	2	F	0	0	0
Tyson Apostol	34	Heber,  UT	Former Pro Cyclist/Shop Manager	27	1	M	0	0	0
David Samson	45	Plantation,  FL	Miami Marlins President	28	18	M	0	0	0
Garrett Adelstein	27	Santa Monica,  CA	Professional Poker Player	28	17	M	0	0	0
Brice Johnston	27	Philadelphia,  PA	Social Worker	28	16	M	1	0	0
J'Tia Taylor	31	Chicago,  IL	Nuclear Engineer	28	15	F	1	0	0
Cliff Robinson	46	Newark,  NJ	Former NBA All-Star	28	14	M	1	0	0
Lindsey Ogle	29	Kokomo,  IN	Hairstylist	28	13	F	0	0	0
Alexis Maxwell	21	Addison,  IL	Student	28	12	F	0	0	1
Sarah Lacina	29	Cedar Rapids,  IA	Police Officer	28	11	F	0	0	0
Morgan McLeod	21	San Jose,  CA	Ex-NFL Cheerleader	28	10	F	0	0	0
LJ McKanas	34	Boston,  MA	Horse Trainer	28	9	M	0	0	0
Jeremiah Wood	34	Dobson,  NC	Male Model	28	8	M	0	0	0
Jefra Bland	22	Campbellsville,  KY	Miss Kentucky Teen USA	28	7	F	0	0	0
Tasha Fox	37	St. Louis,  MO	Accountant	28	6	F	1	0	0
Trish Hegarty	48	Needham,  MA	Pilates Teacher	28	5	F	0	0	0
Spencer Bledsoe	21	Chicago,  IL	Economics Student	28	4	M	0	0	0
Kass McQuillen	41	Tehachapi,  CA	Attorney	28	3	F	0	0	0
Woo Hwang	29	Newport Beach,  CA	Martial Arts Instructor	28	2	M	0	1	0
Tony Vlachos	39	Jersey City,  NJ	Police Officer	28	1	M	0	0	0
Nadiya Anderson	28	Edgewater,  NJ	Crossfit Coach/Project Coordinator	29	18	F	0	1	0
Val Collins	35	Foxborough,  MA	Police Officer	29	17	F	1	0	0
John Rocker	39	Atlanta,  GA	Former MLB Player	29	16	M	0	0	0
Drew Christy	25	Winter Park,  FL	Traveling Sales Representative	29	15	M	0	0	0
Kelley Wentworth	28	Seattle,  WA	Marketing Manager	29	14	F	0	0	0
Dale Wentworth	55	Ephrata,  WA	Farmer	29	13	M	0	0	0
Julie McGee	34	Atlanta,  GA	Model/Spray Tan Business Owner	29	12	F	0	0	0
Josh Canfield	32	New York,  NY	Singer/Actor/Writer	29	11	M	0	0	0
Jeremy Collins	36	Foxborough,  MA	Firefighter	29	10	M	1	0	0
Wes Nale	24	Shreveport,  LA	Firefighter	29	9	M	0	0	0
Reed Kelly	31	New York,  NY	Broadway Performer/Model/Aerialist	29	8	M	0	0	0
Alec Christy	22	Winter Park,  FL	Student	29	7	M	0	0	0
Jon Misch	26	Waterford,  MI	Financial Assistant	29	6	M	0	0	0
Baylor Wilson	20	Nashville,  TN	Student	29	5	F	0	0	0
Keith Nale	53	Shreveport,  LA	Firefighter	29	4	M	0	0	0
Missy Payne	47	Dallas,  TX	Competitive Cheerleading Gym Owner	29	3	F	0	0	0
Jaclyn Schultz	25	Wyandotte,  MI	Media Buyer	29	2	F	0	0	0
Natalie Anderson	28	Edgewater,  NJ	Crossfit Coach/Physical Therapy Student	29	1	F	0	1	0
So Kim	31	Long Beach,  CA	Retail Buyer	30	18	F	0	1	0
Vince Sly	32	Santa Monica,  CA	Coconut Vendor	30	17	M	0	0	0
Nina Poersch	51	Palmdale,  CA	Hearing Advocate	30	16	F	0	1	0
Lindsey Cascaddan	24	College Park,  FL	Hairdresser	30	15	F	0	0	0
Max Dawson	37	Topanga,  CA	Media Consultant	30	14	M	0	0	0
Joaquin Souberbielle	27	Valley Stream,  NY	Marketing Director	30	13	M	0	0	1
Kelly Remington	44	Grand Island,  NY	State Trooper	30	12	F	0	0	0
Hali Ford	25	San Francisco,  CA	Law Student	30	11	F	0	0	0
Joe Anglim	25	Scottsdale,  AZ	Jewelry Designer	30	10	M	0	0	0
Jenn Brown	22	Long Beach,  CA	Sailing Instructor	30	9	F	0	0	0
Shirin Oskooi	31	San Francisco,  CA	Yahoo! Executive	30	8	F	0	1	0
Tyler Fredrickson	33	Los Angeles,  CA	Ex-Talent Agent Assistant	30	7	M	0	0	0
Dan Foley	47	Gorham,  ME	Postal Worker	30	6	M	0	0	0
Sierra Dawn Thomas	27	Roy,  UT	Barrel Racer	30	5	F	0	0	0
Rodney Lavoie	24	Boston,  MA	General Contractor	30	4	F	0	0	0
Will Sims II	41	Sherman Oaks,  CA	YouTube Sensation	30	2	M	1	0	0
Carolyn Rivera	52	Tampa,  FL	Corporate Executive	30	2	F	0	0	0
Mike Holloway	38	North Richland Hills,  TX	Oil Driller	30	1	M	0	0	0
Vytas Baskauskas	35	Santa Monica,  CA	Yoga Instructor/Math Professor	31	20	M	0	0	0
Shirin Oskooi	32	San Francisco,  CA	Yahoo! Executive	31	19	F	0	1	0
Peih-Gee Law	37	San Francisco,  CA	Jeweler	31	18	F	0	1	0
Jeff Varner	49	Greensboro,  NC	Internet Projects Manager	31	17	M	0	0	0
Monica Padilla	30	Queens,  NY	Law Student	31	16	F	0	0	1
Terry Deitz	55	Simsbury,  CT	Pilot	31	15	M	0	0	0
Woo Hwang	31	Newport Beach,  CA	Martial Arts Instructor	31	14	M	0	1	0
Kass McQuillen	42	Tehachapi,  CA	Attorney	31	13	F	0	0	0
Andrew Savage	51	San Jose,  CA	Attorney	31	12	M	0	0	0
Kelly Wiglesworth	37	Greensboro,  NC	River Guide	31	11	F	0	0	0
Ciera Eastin	26	Salem,  OR	Cosmetology Student	31	10	F	0	0	0
Stephen Fishbach	36	New York,  NY	Corporate Consultant	31	9	M	0	0	0
Joe Anglim	25	Scottsdale,  AZ	Jewelry Designer	31	8	M	0	0	0
Abi-Maria Gomes	35	Los Angeles,  CA	Business Student	31	7	F	0	0	1
Kimmi Kappenberg	42	The Woodlands,  TX	Bartender	31	6	F	0	0	0
Keith Nale	54	Keithville,  LA	Firefighter	31	5	M	0	0	0
Kelley Wentworth	29	Seattle,  WA	Marketing Manager	31	4	F	0	0	0
Spencer Bledsoe	22	Chicago,  IL	Economics Student	31	2	M	0	0	0
Tasha Fox	39	St. Louis,  MO	Accountant	31	2	F	1	0	0
Jeremy Collins	37	Foxborough,  MA	Firefighter	31	1	M	1	0	0
Darnell Hamilton	27	Chicago,  IL	Postal Worker	32	18	M	1	0	0
Jennifer Lanzetti	38	Salt Lake City,  UT	Contractor	32	17	F	0	0	0
Liz Markham	27	Brooklyn,  NY	Quantitative Strategist	32	16	F	0	0	0
Caleb Reynolds	28	Hopkinsville,  KY	Army Veteran	32	15	M	0	0	0
Alecia Holden	24	Dallas,  TX	Real Estate Agent	32	14	F	0	0	0
Anna Khait	26	Brooklyn,  NY	Professional Poker Player	32	13	F	0	0	0
Peter Baggenstos	34	Minneapolis,  MN	ER Doctor	32	12	M	1	0	0
Neal Gottlieb	38	Sausalito,  CA	Ice Cream Entrepreneur	32	11	M	0	0	0
Nick Maiorano	30	Redondo Beach,  CA	Personal Trainer	32	10	M	0	0	0
Debbie Wanner	49	Reading,  PA	Chemist	32	9	F	0	0	0
Scot Pollard	40	Carmel,  IN	Former NBA Player	32	8	M	0	0	0
Julia Sokolowski	19	Boston,  MA	College Student	32	7	F	0	0	0
Kyle Jason	31	Detroit,  MI	Bounty Hunter	32	6	M	0	0	0
Joe del Campo	71	Vero Beach,  FL	Former FBI Agent	32	5	M	0	0	0
Cydney Gillon	23	Douglasville,  GA	Bodybuilder	32	4	F	1	0	0
Tai Trang	51	San Francisco,  CA	Gardener	32	3	M	0	1	0
Aubry Bracco	29	Cambridge,  MA	Social Media Marketer	32	2	F	0	0	0
Michele Fitzgerald	24	Freehold,  NJ	Bartender	32	1	F	0	0	0
Rachel Ako	37	Los Angeles,  CA	Recruiting Director	33	20	F	0	1	0
Mari Takahashi	31	Los Angeles,  CA	Gamer	33	19	F	0	1	0
Paul Wachter	52	Sugarloaf Key,  FL	Boat Mechanic	33	18	M	0	0	0
Lucy Huang	42	Diamond Bar,  CA	Dietitian	33	17	F	0	1	0
CeCe Taylor	39	Granada Hills,  CA	Insurance Adjuster	33	16	F	1	0	0
Figgy Figueroa	23	Nashville,  TN	Bartender	33	15	F	0	0	1
Michaela Bradshaw	25	Fort Worth,  TX	Vacation Club Saleswoman	33	14	F	1	0	0
Michelle Schubert	28	Yakima,  WA	Missionary Recruiter	33	13	F	0	0	0
Taylor Stocker	24	Post Falls,  ID	Snowboard Instructor	33	12	M	0	0	0
Chris Hammons	38	Moore,  OK	Trial Attorney	33	11	M	0	0	0
Jessica Lewis	37	Voorheesville,  NY	Assistant District Attorney	33	10	F	0	0	0
Will Wahl	18	Long Valley,  NJ	High School Student	33	8	M	0	0	0
Sunday Burquest	45	Otsego,  MN	Youth Pastor	33	7	F	0	0	0
Jay Starrett	27	Fort Lauderdale,  FL	Real Estate Agent	33	6	M	0	0	1
Bret LaBelle	42	Dedham,  MA	Police Sergeant	33	5	M	0	0	0
David Wright	42	Sherman Oaks,  CA	Television Writer	33	4	M	0	0	0
Hannah Shapiro	24	West Hollywood,  CA	Barista	33	2	F	0	0	0
Ken McNickle	33	Denver,  CO	Model	33	2	M	0	0	0
Adam Klein	25	San Francisco,  CA	Homeless Shelter Manager	33	1	M	0	0	0
Ciera Eastin	27	Salem,  OR	Cosmetology Student	34	20	F	0	0	0
Tony Vlachos	42	Jersey City,  NJ	Police Officer	34	19	M	0	0	0
Caleb Reynolds	28	Hopkinsville,  KY	Army Veteran	34	18	M	0	0	0
Malcolm Freberg	29	Hermosa Beach,  CA	Bartender	34	17	M	0	0	0
J.T. Thomas	31	Mobile,  AL	Cattle Rancher	34	16	M	0	0	0
Sandra Diaz-Twine	42	Fayetteville,  NC	Office Assistant	34	15	F	0	0	1
Jeff Varner	50	High Point,  NC	Internet Project Manager	34	14	M	0	0	0
Hali Ford	26	Knoxville,  TN	Law Student	34	13	F	0	0	0
Ozzy Lusth	34	Venice,  CA	Photographer	34	12	M	0	0	1
Debbie Wanner	51	Reading,  PA	Chemist	34	11	F	0	0	0
Zeke Smith	28	Brooklyn,  NY	Asset Manager	34	10	M	0	0	0
Sierra Dawn Thomas	29	Roy,  UT	Barrel Racer	34	9	F	0	0	0
Andrea Boehlke	27	New York,  NY	Entertainment Host/Writer	34	8	F	0	0	0
Michaela Bradshaw	25	Fort Worth,  TX	Vacation Club Sales	34	7	F	1	0	0
Cirie Fields	45	Norwalk,  CT	Nurse	34	6	F	1	0	0
Aubry Bracco	30	Cambridge,  MA	Social Media Marketer	34	5	F	0	0	0
Tai Trang	52	San Francisco,  CA	Gardener	34	4	M	0	1	0
Troyzan Robertson	54	Miami,  FL	Swimsuit Photographer	34	3	M	0	0	0
Brad Culpepper	47	Tampa,  FL	Attorney/Former NFL Player	34	2	M	0	0	0
Sarah Lacina	32	Marion,  IA	Police Officer	34	1	F	0	0	0
Katrina Radke	46	Excelsior,  MN	Olympian	35	18	F	0	0	0
Simone Nguyen	25	New York,  NY	Diversity Advocate	35	17	F	0	1	0
Patrick Bolton	24	Auburn,  AL	Small Business Owner	35	16	M	0	0	0
Alan Ball	31	Houston,  TX	NFL Player	35	15	M	1	0	0
Roark Luskin	27	Santa Monica,  CA	Social Worker	35	14	F	0	0	0
Ali Elliott	24	Los Angeles,  CA	Celebrity Assistant	35	13	F	1	0	0
Jessica Johnston	29	Louisville,  KY	Nurse Practitioner	35	12	F	0	0	0
Desi Williams	27	Newport News,  VA	Physical Therapist	35	11	F	1	0	0
Cole Medders	24	Little Rock,  AR	Wilderness Therapy Guide	35	10	M	0	0	0
JP Hilsabeck	28	Los Angeles,  CA	Firefighter	35	9	M	0	0	0
Joe Mena	34	Tolland,  CT	Probation Officer	35	8	M	0	0	1
Lauren Rimmer	35	Beaufort,  NC	Fisherwoman	35	7	F	0	0	0
Ashley Nolan	26	Satellite Beach,  FL	Lifeguard	35	6	F	0	0	0
Mike Zahalsky	43	Parkland,  FL	Urologist	35	5	M	0	0	0
Devon Pinto	24	Solana Beach,  CA	Surf Instructor	35	4	M	0	0	1
Ryan Ulrich	23	North Arlington,  NJ	Bellhop	35	3	M	0	0	0
Chrissy Hofbeck	46	Lebanon Township,  NJ	Actuary	35	2	F	0	0	0
Ben Driebergen	34	Boise,  ID	Marine	35	1	M	0	0	0
Stephanie Gonzalez	26	Ocala,  FL	Graphic Saleswoman	36	20	F	0	0	1
Jacob Derwin	22	Merrick,  NY	Music Teacher	36	19	M	0	0	0
Morgan Ricke	29	Orlando,  FL	Marine Animal Trainer	36	18	F	0	0	0
Brendan Shapiro	41	Herndon,  VA	Physical Education Teacher	36	17	M	0	0	0
Stephanie Johnson	34	Chicago,  IL	Yoga Instructor	36	16	F	0	0	0
James Lim	24	New York,  NY	Business Analyst	36	15	M	0	1	0
Bradley Kleihege	26	Los Angeles,  CA	Law Student	36	14	M	0	0	0
Chris Noble	27	Brooklyn,  NY	Male Model	36	13	M	0	0	0
Libby Vincek	24	Nashville,  TN	Social Media Strategist	36	12	F	0	0	0
Desiree Afuye	21	Brooklyn,  NY	Student	36	11	F	1	0	0
Jenna Bowman	23	Venice Beach,  CA	Advertising Account Executive	36	10	F	0	0	0
Michael Yerger	18	Los Angeles,  CA	Real Estate Agent	36	9	M	0	0	0
Chelsea Townsend	24	Los Angeles,  CA	EMT/Pro Cheerleader	36	8	F	0	0	0
Kellyn Bechtold	31	Denver,  CO	Career Counselor	36	7	F	0	0	0
Sebastian Noel	22	Melbourne,  FL	Fishing Guide	36	6	M	0	0	0
Donathan Hurley	26	Kimper,  KY	Caretaker	36	5	M	0	0	0
Angela Perkins	42	Cincinnati,  OH	Army Veteran	36	4	F	0	0	0
Laurel Johnson	29	Minneapolis,  MN	Financial Consultant	36	3	F	1	0	0
Domenick Abbate	38	Nesconset,  NY	Construction Supervisor	36	2	M	0	0	0
Wendell Holland	33	Philadelphia,  PA	Furniture Company Owner	36	1	M	1	0	0
Pat Cusack	41	Cohoes,  NY	Maintenance Manager	37	20	M	0	0	0
Jessica Peet	19	Lakeland,  FL	Waitress	37	19	F	0	0	0
Jeremy Crawford	40	Clover,  SC	Attorney	37	18	M	1	0	0
Bi Nguyen	28	Houston,  TX	Mixed Martial Arts Fighter	37	17	F	0	1	0
Natalia Azoqa	25	Irvine,  CA	Industrial Engineer	37	16	F	0	1	0
Natalie Cole	57	Los Angeles,  CA	Publishing CEO	37	15	F	1	0	0
Lyrsa Torres	36	Boston,  MA	Airline Agent	37	14	F	0	0	1
Elizabeth Olson	31	Longview,  TX	Kitchen Staff Member	37	13	F	0	0	0
John Hennigan	38	Los Angeles,  CA	Professional Wrestler	37	12	M	0	0	0
Dan Rengering	27	Lake Butler,  FL	S.W.A.T. Officer	37	11	M	0	0	0
Alec Merlino	24	San Clemente,  CA	Bartender	37	10	M	0	0	0
Carl Boudreaux	41	Beaumont,  TX	Truck Driver	37	9	M	1	0	0
Gabby Pascuzzi	25	St. Augustine,  FL	Technical Writer	37	8	F	0	1	0
Christian Hubicki	32	Tallahassee,  FL	Robotics Scientist	37	7	M	0	0	0
Davie Rickenbacker	30	Orangeburg,  SC	Social Media Manager	37	6	M	1	0	0
Alison Raybould	28	Chapel Hill,  NC	Physician	37	5	F	0	0	0
Kara Kay	30	San Diego,  CA	Realtor	37	4	F	0	0	0
Angelina Keeley	28	Sparks,  NV	Financial Consultant	37	3	F	0	0	1
Mike White	47	Los Angeles,  CA	Filmmaker	37	2	M	0	0	0
Nick Wilson	27	Williamsburg,  KY	Public Defender	37	1	M	0	0	0
Reem Daly	46	Ashburn,  VA	Sales Representative	38	18	F	0	0	0
Keith Sowell	19	Durham,  NC	Pre-Med Student	38	17	M	1	0	0
Aubry Bracco	32	Los Angeles,  CA	Marketing Director	38	16	F	0	0	0
Wendy Diaz	25	Bell,  CA	Small Business Owner	38	15	F	0	0	1
Joe Anglim	29	Ogden,  UT	Multimedia Artist	38	14	M	0	0	0
Eric Hafemann	35	Livermore,  CA	Firefighter	38	13	M	0	0	0
Julia Carter	25	Bethesda,  MD	Medical Assistant	38	12	F	1	0	0
David Wright	44	Sherman Oaks,  CA	Television Writer	38	11	M	0	0	0
Kelley Wentworth	31	Seattle,  WA	Marketing Manager	38	10	F	0	0	0
Wardog DaSilva	38	Los Angeles,  CA	Law Student/Former Military	38	9	M	0	0	0
Ron Clark	46	Atlanta,  GA	Teacher	38	8	M	0	0	0
Aurora McCreary	32	Orlando,  FL	Divorce Attorney	38	7	F	0	0	0
Victoria Baamonde	23	Bronx,  NY	Waitress	38	6	F	0	0	1
Lauren O'Connell	21	Bakersfield,  CA	Student	38	5	F	0	0	0
Rick Devens	33	Blacksburg,  VA	Morning News Anchor	38	4	M	0	0	0
Julie Rosenberg	46	New York,  NY	Toymaker	38	3	F	0	0	0
Gavin Whitson	23	Erwin,  TN	YMCA Program Director	38	2	M	0	0	0
Chris Underwood	25	Greenville,  SC	District Sales Manager	38	1	M	0	0	1
Ronnie Bardah	35	Henderson,  NV	Poker Player	39	20	M	1	1	0
Molly Byman	27	Durham,  NC	Law Student	39	19	F	0	0	0
Vince Moua	27	Palo Alto,  CA	Admissions Counselor	39	18	M	0	1	0
Chelsea Walker	26	Los Angeles,  CA	Digital Content Creator	39	17	F	0	0	0
Tom Laidlaw	60	Greenwich,  CT	Former NHL Player	39	16	M	0	0	0
Jason Linden	32	New York,  NY	Personal Injury Attorney	39	15	M	0	0	0
Jack Nichting	23	Harrisonburg,  VA	Grad Student	39	14	M	0	0	0
Kellee Kim	29	Philadelphia,  PA	MBA Student	39	13	F	0	1	0
Jamal Shipman	33	Providence,  RI	College Administrator	39	12	M	1	0	1
Aaron Meredith	36	Warwick,  RI	Gym Owner	39	11	M	1	0	0
Missy Byrd	24	Tacoma,  WA	Air Force Veteran	39	10	F	1	0	0
Elizabeth Beisel	26	Saunderstown,  RI	Olympic Medalist	39	9	F	0	0	0
Karishma Patel	37	Houston,  TX	Personal Injury Attorney	39	8	F	0	1	0
Elaine Stott	41	Rockholds,  KY	Factory Worker	39	7	F	0	0	0
Dan Spilo	48	Los Angeles,  CA	Talent Manager	39	6	M	0	0	0
Janet Carbin	59	Palm Bay,  FL	Chief Lifeguard	39	5	F	0	0	0
Lauren Beck	28	Glendale,  CA	Nanny	39	4	F	1	0	0
Noura Salman	36	North Potomac,  MD	Entrepreneur	39	3	F	0	1	0
Dean Kowalski	28	New York,  NY	Tech Sales	39	2	M	0	0	0
Tommy Sheehan	26	Long Beach,  NY	4th Grade Teacher	39	1	M	0	0	0
Amber Mariano	40	Pensacola,  FL	Director of Marketing & Communications	40	20	F	0	0	0
Danni Boatwright	43	Shawnee,  KS	Sideline Chic Owner	40	19	F	0	0	0
Ethan Zohn	45	Hillsborough,  NH	Keynote Speaker/Social Entrepreneur	40	18	M	0	0	0
Rob Mariano	43	Pensacola,  FL	Construction Worker	40	17	M	0	0	0
Parvati Shallow	36	Los Angeles,  CA	Life Coach/Speaker/Yoga Teacher	40	16	F	0	0	0
Sandra Diaz-Twine	44	Riverview,  FL	Case Manager	40	15	F	0	0	1
Yul Kwon	44	Los Altos,  CA	Product Management	40	14	M	0	1	0
Wendell Holland	35	Philadelphia,  PA	Furniture Designer	40	13	M	1	0	0
Adam Klein	28	Burlingame,  CA	Host/Keynote Speaker	40	12	M	0	0	0
Tyson Apostol	39	Mesa,  AZ	Former Pro Cyclist/Shop Manager	40	11	M	0	0	0
Sophie Clarke	29	Santa Monica,  CA	Healthcare Consultant	40	10	F	0	0	0
Kim Spradlin-Wolfe	36	San Antonio,  TX	Interior Designer	40	9	F	0	0	0
Jeremy Collins	41	Foxborough,  MA	Firefighter	40	8	M	1	0	0
Nick Wilson	28	Williamsburg,  KY	Attorney	40	7	M	0	0	0
Denise Stapley	48	Marion,  IA	Sex Therapist	40	6	F	0	0	0
Ben Driebergen	36	Boise,  ID	Real Estate Agent/Stay-at-home Dad	40	5	M	0	0	0
Sarah Lacina	35	Cedar Rapids,  IA	Police Officer	40	4	F	0	0	0
Michele Fitzgerald	29	Hoboken,  NJ	Business Development Manager	40	3	F	0	0	0
Natalie Anderson	33	Edgewater,  NJ	CrossFit Trainer	40	2	F	0	1	0
Tony Vlachos	45	Allendale,  NJ	Police Officer	40	1	M	0	0	0
Eric Abraham	51	San Antonio,  TX	Cyber Security Analyst	41	18	M	1	0	0
Sara Wilson	24	Boston,  MA	Healthcare Consultant	41	17	F	0	0	0
David Voce	35	Chicago,  IL	Neurosurgeon	41	16	M	0	0	0
JD Robinson	20	Oklahoma City,  OK	College Student	41	14	M	1	0	0
Genie Chen	46	Portland,  OR	Grocery Clerk	41	13	F	0	1	0
Sydney Segal	26	Brooklyn,  NY	Law Student	41	12	F	0	0	0
Tiffany Seely	47	Plainview,  NY	Teacher	41	11	F	0	0	0
Naseer Muttalif	37	Morgan Hill,  CA	Sales Manager	41	10	M	0	1	0
Evvie Jagoda	28	Arlington,  MA	PhD Student	41	9	N	0	0	0
Shan Smith	34	Washington,  DC	Pastor	41	8	F	1	0	0
Liana Wallace	20	Washington,  DC	College Student	41	7	F	1	0	0
Danny McCray	33	Frisco,  TX	Ex-NFL Player	41	6	M	1	0	0
Ricard Foyé	31	Sedro-Woolley,  WA	Flight Attendant	41	5	M	0	0	1
Heather Aldret	52	Charleston,  SC	Stay-at-Home Mom	41	4	F	0	0	0
Xander Hastings	21	Chicago,  IL	App Developer	41	3	M	0	0	0
Deshawn Radden	26	Miami,  FL	Medical Student	41	2	M	1	0	0
Erika Casupanan	32	Toronto,  ON	Communications Manager	41	1	F	0	1	0
Jackson Fox	48	Houston,  TX	Healthcare Worker	42	18	M	0	0	0
Zach Wurtenberger	22	St. Louis,  MO	Student	42	17	M	0	0	0
Marya Sherron	47	Noblesville,  IN	Stay-at-Home Mom	42	16	F	1	0	0
Jenny Kim	43	Brooklyn,  NY	Creative Director	42	15	F	0	1	0
Swati Goel	19	Palo Alto,  CA	Ivy League Student	42	14	F	0	1	0
Daniel Strunk	30	New Haven,  CT	Law Clerk	42	13	M	0	0	0
Lydia Meredith	22	Santa Monica,  CA	Waitress	42	12	F	0	0	0
Chanelle Howell	29	New York,  NY	Executive Recruiter	42	11	F	1	0	0
Rocksroy Bailey	44	Las Vegas,  NV	Stay-at-Home Dad	42	10	M	1	0	0
Tori Meehan	25	Rogers,  AR	Therapist	42	9	F	0	0	0
Hai Giang	29	New Orleans,  LA	Data Scientist	42	8	M	0	1	0
Drea Wheeler	35	Montreal,  QC	Fitness Consultant	42	7	F	1	0	0
Omar Zaheer	31	Whitby,  ON	Veterinarian	42	6	M	0	1	0
Lindsay Dolashewich	31	Asbury Park,  NJ	Dietitian	42	5	F	0	0	0
Jonathan Young	29	Gulf Shores,  AL	Beach Service Company Owner	42	4	M	0	0	0
Romeo Escobar	37	Norwalk,  CA	Pageant Coach	42	3	M	0	0	1
Mike Turner	58	Hoboken,  NJ	Retired Firefighter	42	2	M	0	0	1
Maryanne Oketch	24	Ajax,  ON	Seminary Student	42	1	F	1	0	0
\.


--
-- Data for Name: season; Type: TABLE DATA; Schema: public; Owner: aldopolanco
--

COPY public.season (season_number, season_name, num_contestant) FROM stdin;
1	Survivor: Borneo	16
2	Survivor: The Australian Outback	16
3	Survivor: Africa	16
4	Survivor: Marquesas	16
5	Survivor: Thailand	16
6	Survivor: The Amazon	16
7	Survivor: Pearl Islands	16
8	Survivor: All-Stars	18
9	Survivor: Vanuatu	18
10	Survivor: Palau	20
11	Survivor: Guatemala	18
12	Survivor: Panama	16
13	Survivor: Cook Islands	20
14	Survivor: Fiji	19
15	Survivor: China	16
16	Survivor: Micronesia	20
17	Survivor: Gabon	18
18	Survivor: Tocantins	16
19	Survivor: Samoa	20
20	Survivor: Heroes vs. Villains	20
21	Survivor: Nicaragua	20
22	Survivor: Redemption Island	18
23	Survivor: South Pacific	18
24	Survivor: One World	18
25	Survivor: Philippines	18
26	Survivor: Caramoan	20
27	Survivor: Blood vs. Water	20
28	Survivor: Cagayan	18
29	Survivor: San Juan del Sur	18
30	Survivor: Worlds Apart	18
31	Survivor: Cambodia	20
32	Survivor: Kaôh Rōng	18
33	Survivor: Millennials vs. Gen X	20
34	Survivor: Game Changers	20
35	Survivor: Heroes vs. Healers vs. Hustlers	18
36	Survivor: Ghost Island	20
37	Survivor: David vs. Goliath	20
38	Survivor: Edge of Extinction	18
39	Survivor: Island of the Idols	20
40	Survivor: Winners at War	20
41	Survivor 41	18
42	Survivor 42	18
\.


--
-- Data for Name: tribe; Type: TABLE DATA; Schema: public; Owner: aldopolanco
--

COPY public.tribe (season_number, tribe_name, size, merged, poc) FROM stdin;
1	Tagi	8	0	0
1	Pagong	8	0	2
1	Rattana	10	1	1
2	Kucha	8	0	2
2	Ogakor	8	0	1
2	Barramundi	10	1	2
3	Boran	8	0	2
3	Samburu	8	0	1
3	Boran	6	0	1
3	Samburu	6	0	0
3	Moto Maji	10	1	1
4	Maraamu	8	0	2
4	Rotu	8	0	0
4	Maraamu	5	0	0
4	Rotu	8	0	2
4	Soliantu	10	1	2
5	Chuay Gahn	8	0	2
5	Sook Jai	8	0	1
5	Chuay Jai	8	1	1
6	Tambaqui	8	0	1
6	Jaburu	8	0	2
6	Tambaqui	6	0	0
6	Jaburu	6	0	1
6	Jacaré	10	1	1
7	Morgan	8	0	2
7	Drake	8	0	1
7	Balboa	10	1	2
8	Saboga	6	0	0
8	Mogo Mogo	6	0	1
8	Chapera	6	0	1
8	Mogo Mogo	7	0	1
8	Chapera	7	0	1
8	Chapera	5	0	1
8	Mogo Mogo	5	0	1
8	Chaboga Mogo	9	1	2
9	Lopevi	9	0	1
9	Yasur	9	0	0
9	Yasur	7	0	1
9	Lopevi	6	0	0
9	Alinta	10	1	1
10	Ulong	9	0	2
10	Koror	9	0	1
10	Koror	9	1	1
11	Nakúm	9	0	0
11	Yaxhá	9	0	2
11	Nakúm	8	0	1
11	Yaxhá	7	0	0
11	Xhakúm	10	1	1
12	Casaya	4	0	1
12	Bayoneta	4	0	0
12	Viveros	4	0	1
12	La Mina	4	0	1
12	Casaya	8	0	3
12	La Mina	7	0	0
12	Gitanos	10	1	2
13	Manihiki	5	0	5
13	Aitutaki	5	0	5
13	Puka Puka	5	0	5
13	Rarotonga	5	0	0
13	Aitutaki	9	0	6
13	Rarotonga	9	0	7
13	Rarotonga	8	0	4
13	Aitutaki	4	0	4
13	Aitutonga	9	1	5
14	Ravu	10	0	8
14	Moto	9	0	7
14	Ravu	6	0	5
14	Moto	7	0	6
14	Bula Bula	10	1	9
15	Zhan Hu	8	0	3
15	Fei Long	8	0	1
15	Zhan Hu	5	0	2
15	Fei Long	7	0	2
15	Hae Da Fung	10	1	3
16	Malakal	10	0	4
16	Airai	10	0	1
16	Malakal	8	0	2
16	Airai	8	0	2
16	Dabu	10	1	4
17	Fang	9	0	4
17	Kota	9	0	2
17	Fang	8	0	3
17	Kota	7	0	2
17	Kota	5	0	4
17	Fang	5	0	0
17	Nobag	9	1	3
18	Jalapao	8	0	2
18	Timbira	8	0	2
18	Forza	10	1	1
19	Foa Foa	10	0	2
19	Galu	10	0	5
19	Aiga	12	1	4
20	Heroes	10	0	2
20	Villains	10	0	1
20	Yin Yang	10	1	1
21	Espada	10	0	2
21	La Flor	10	0	3
21	Espada	8	0	3
21	La Flor	8	0	2
21	Libertad	12	1	3
22	Ometepe	9	0	2
22	Zapatera	9	0	1
22	Murlonio	12	1	1
23	Savaii	9	0	3
23	Upolu	9	0	4
23	Te Tuna	12	1	3
24	Salani	9	0	3
24	Manono	9	0	2
24	Manono	7	0	3
24	Salani	7	0	1
24	Tikiano	12	1	4
25	Matsing	6	0	2
25	Kalabaw	6	0	1
25	Tandang	6	0	2
25	Kalabaw	7	0	1
25	Tandang	7	0	2
25	Dangrayne	11	1	2
26	Bikal	11	0	3
26	Gota	9	0	1
26	Bikal	8	0	1
26	Gota	6	0	1
26	Enil Edam	12	1	2
27	Galang	10	0	1
27	Tadhana	10	0	1
27	Galang	9	0	1
27	Tadhana	9	0	1
27	Galang	6	0	0
27	Tadhana	6	0	1
27	Kasama	11	1	1
28	Luzon	6	0	2
28	Solana	6	0	2
28	Aparri	6	0	2
28	Solana	7	0	2
28	Aparri	7	0	2
28	Solarrion	11	1	2
29	Coyopa	9	0	2
29	Hunahpu	9	0	2
29	Coyopa	7	0	0
29	Hunahpu	7	0	2
29	Huyopa	12	1	2
30	Masaya	7	0	4
30	Nagarote	5	0	1
30	Escameca	6	0	0
30	Nagarote	7	0	2
30	Escameca	7	0	1
30	Merica	12	1	2
31	Ta Keo	11	0	5
31	Bayon	9	0	2
31	Angkor	5	0	3
31	Bayon	7	0	3
31	Ta Keo	6	0	0
31	Ta Keo	8	0	3
31	Bayon	6	0	1
31	Orkun	13	1	3
32	To Tang	6	0	2
32	Chan Loh	6	0	1
32	Gondol	6	0	1
32	Gondol	7	0	2
32	Chan Loh	6	0	1
32	Dara	11	1	2
33	Takali	9	0	3
33	Vanua	11	0	4
33	Vanua	5	0	1
33	Takali	4	0	1
33	Ikabula	7	0	2
33	Vinaka	13	1	1
34	Mana	10	0	2
34	Nuku	10	0	3
34	Mana	6	0	1
34	Nuku	6	0	2
34	Tavua	6	0	2
34	Nuku	8	0	3
34	Mana	7	0	2
34	Maku Maku	13	1	4
35	Levu	6	0	1
35	Yawa	6	0	3
35	Soko	6	0	2
35	Levu	5	0	4
35	Soko	5	0	1
35	Yawa	5	0	0
35	Solewa	12	1	3
36	Malolo	10	0	3
36	Naviti	10	0	2
36	Naviti	9	0	3
36	Malolo	9	0	1
36	Malolo	5	0	2
36	Naviti	5	0	0
36	Yanuya	5	0	2
36	Lavita	13	1	3
37	David	10	0	5
37	Goliath	10	0	4
37	Vuku	6	0	3
37	Jabeni	5	0	3
37	Tiva	5	0	1
37	Kalokalo	13	1	4
38	Manu	9	0	3
38	Kama	9	0	2
38	Manu	5	0	2
38	Kama	5	0	1
38	Lesu	5	0	0
38	Vata	14	1	3
39	Lairo	10	0	5
39	Vokai	10	0	4
39	Lairo	8	0	4
39	Vokai	8	0	3
39	Lumuwaku	13	1	7
40	Dakal	10	0	2
40	Sele	10	0	3
40	Yara	5	0	0
40	Dakal	5	0	1
40	Sele	5	0	3
40	Koru	13	1	3
41	Yase	6	0	2
41	Ua	6	0	4
41	Luvu	6	0	4
41	Viakana	12	1	7
42	Taku	6	0	3
42	Ika	6	0	4
42	Vati	6	0	4
42	Kula Kula	12	1	8
\.


--
-- PostgreSQL database dump complete
--

