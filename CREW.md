# CREW MANIFEST
### SUS *Eridanus* (SF-386)

## GENERAL NOTES

Each billet has one replacement, two for billets where the incumbent as of episode 101 is plotted to leave the ship during the first three seasons. If no one is available for a given billet, it doesn’t get filled with replacement crew. There are four watch-standing rota: OOW, quartermaster, engineer, and science station. If any rota drops below two members, the campaign ends in failure, with the CO relieved for excessive crew casualties. Replacement characters are designed to be slotted in with minimal code and branch changes, following similar arcs, possibly with a bit with less colour. Incumbent crew start at 0 or +1; replacements generally start at -1, with exceptions.

Skills rank from 0 to 3, and default to 0. Add +1 for the skill being a departmental skill for the crewmember, +1 for the character being at +1 or +2 development, -1 for the character being at -1 development, and +1 for the skill being the character’s specialty. That makes the skill levels programmatically obvious, rather than needing a table. A handful of characters have programmed-in other modifiers. (Missy is inept at a number of things, for example.)

There are 16 skills: piloting (deck), navigation (deck), gunnery (deck), ground combat (deck, security, supply), survival (deck, security, science), MTD operation (deck, engineering), scrounging (supply), damage control (engineering, supply), sensors (deck, engineering, science), antimatter engineering (engineering), drive engineering (engineering), astrophysics (science), geology (science), linguistics (science), biology (science, medical), and medicine (medical). Every department has at least two departmental skills, and at least one that’s unique to the department.

Departments not represented aboard a ship as small as a Cygnus include Security, Tactical, and Flag. Uniform colours: Command (purple), Deck (), Supply (brown), Security (), Tactical (), Engineering (), Science (), Medical (), Flag (gold). 

### Unresolved Questions

- Three development opportunities times 15 crew means we need to find 45 slots in 10-12 episodes, which is an absolutely frantic pace. Limit the development system to department heads? Just one development step?
- Firm up skill list
- If second officer is Deck head, who is OOW during department head meetings? Does XO represent Deck in the meeting, while 2O takes the watch? Does Bosun take the watch?

## COMMAND CREW

### Commanding Officer

Duty station: watch 1, captain's chair, bridge (watch 1 OOW)  
Battle station: captain's chair, bridge  
Quarters: captain's sleeping cabin, deck 1  
This billet doesn’t have a status byte, because it’s scripted.

**Incumbent:** LCR Alex Player

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age xx). Species/Gender: HX (human non-binary).  
Birthplace: Cambridge, North America, Earth  
Traits: Is the PC. Aro ace, thereby eliminating any need to write romance subplots, and non-binary gender eliminates the need to ask (or assume) what the player's gender is. Promoted to XO of the Odysseus at the end of season 1, leaving Kaur in command.  
No GDW-style cards for character traits, because PC.

**Scripted replacement:** SLT/CND/LCR Amrit Kaur (see below)

No second replacement; Kaur has Main Character Immunity, and you get a Bad Ending if that’s violated.

### Executive Officer 

Duty station: watch 2, captain's chair, bridge (watch 2 OOW)  
Battle station: auxiliary control station, computer core  
Quarters: XO's cabin, deck 2

**Incumbent:** SLT Amrit Kaur 

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF (human female).  
Birthplace: Amritpur, New Khalistan  
Traits: Observant Khalsa Sikh, and too religious to get into any romance arc (or already has a partner off-ship?), which spares us from writing any if she takes over as CO. Has a very strong working relationship with Player; more cool with Zhou once she takes over. Is selected as a command candidate after the first successful playable mission of season 2, goes off to Punisher late in season 2, and makes LCR by the start of season 3.

**Scripted replacement:** SLT NFN Suparman

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace: Banda Aceh, Oceania, Earth  
Traits: 

**Scripted replacement** (for loss after Kaur promoted): SLT Zhou Xiaoping  

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM (human male).  
Birthplace: Shanghai, Asia, Earth  
Traits: 

## DECK DEPARTMENT

### Second Officer/Navigation Officer (department head)

Duty station: watch 3, captain's chair, bridge (watch 3 OOW)  
Battle station: nav station, bridge  
Quarters: port JO quarters, deck 2

**Incumbent:** ENS Mahalia Washington

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace:  
Traits:

**Replacement:** LT Gord Mackenzie

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace: Markham, North America, Earth  
Traits:

### Boatswain/Quartermaster

Duty station: watch 1, helm station, bridge  
Battle station: helm station, bridge  
Quarters: port (deck) crew quarters, deck 3

**Incumbent:** CWO Destra Tesfaye

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace:  
Traits:

**Replacement:** Promote Martinez to CWO, and replace him

### Shuttle Coxswain/Relief Quartermaster

Duty station: watch 3, helm station, bridge  
Battle station: deck 2 DC locker (default), or aboard the shuttle (as ordered)  
Quarters: port (deck) crew quarters, deck 3

**Incumbent:** WO Ignacio "Nacho" Martinez

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace:  
Traits:  

**Replacement:** WO Hans Mueller

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace:  
Traits:  

**Second Replacement** (for Tesfaye): WO Zoltran Randook

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: KL (Kwom, leader).   
Birthplace:  
Traits: 

### MTD Operator/Relief Quartermaster

Duty station: watch 2, helm station, bridge  
Battle station: energy projector local controls, MTD room, deck 1  
Quarters: port (deck) crew quarters, deck 3

**Incumbent:** WO Alexandru Ionescu

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace: Timisoara, Europe, Earth  
Traits: 

**Replacement:** WO Svanhvit Ellidardóttir 

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace: Akureyri, Iceland, Earth  
Traits: 

## SUPPLY DEPARTMENT

### Steward/Supercargo (reports to Second Officer)

Duty station: idler, duties throughout ship  
Battle station: deck 1 DC locker  
Quarters: port (deck) crew quarters, deck 3

**Incumbent:** LC Kwomben Kalbar

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: KX (Kwom, undeclared).  
Birthplace:   
Traits: Is the sixth in line of succession for Supreme Archon of Kwomnu, but is temperamentally unsuited for the position. The Kwomben family has been all Path of Leadership for six generations, without even a Renouncer, and Kalbar’s heartparent (a “Defence Mafia” admiral) is horrified to see their child in the enlisted ranks, not on a trajectory for the Academy, and still Undeclared, leaning toward Service. (Bodyparent is more sympathetic, but the family has expectations.) A whole subplot breaks out when it comes out that they’re s-type, not M-type (the Kwom are all M/s), and the admiral threatens to yank them home.   
Starts at level +1, and pins at level +2 if Player successfully defends them.   
Gender marker changes to “KS” after Player defends them. (For the Kwom, L, R, S, and X are all non-binary; non-Kwom don’t generally understand the distinction between them. Was there a KH also?)  
If Kalbar is KIA, their family will come hard after Player, and try to get them relieved.  
Is by FAR the most competent holder for this billet; replacement #1 is pretty much the worst.

**Scripted replacement:** OC Melissa "Missy" Van Dusen

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace: Mamaroneck, North America, Earth  
Traits: From a wealthy family, and has coasted on family connections until she joined Stellar Command. Is expecting to be selected for the Academy, but is *far* from being on track for it, and her parents are less influential with ExCom than they are with figures on Earth. This is her first assignment, and she considers the Supply Department beneath her; she'll "phone it in" if not closely managed.  

**Second replacement** (if Missy is lost after Kalbar is recalled): AC Shi Zhenghong

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace:  
Traits: 

## ENGINEERING DEPARTMENT

### Chief Engineer (department head)

Duty station: main engineering, watch 1  
Battle station: main engineering, deck 2  
Quarters: chief engineer's quarters, deck 2

**Incumbent:** SLT Musa Adamu

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace:  
Traits:

**Replacement:** promote Wang to SLT, replace her

### Second Engineer

Duty station: main engineering, watch 2  
Battle station: engineering station, bridge  
Quarters: starboard (engineering) JO quarters, deck 2

**Incumbent:** LT Wang Li

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace:  
Traits:

**Replacement:** LT Hye-Kyung Pak

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace:  
Traits:

**Second replacement** (for Adamu): ENS Sita Ramakrishnan

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace:  
Traits:

### Third Engineer

Duty station: main engineering, watch 3  
Battle station: main engineering, deck 2  
Quarters: starboard (engineering) JO quarters, deck 2  

**Incumbent:** ENS Rajiv Patel

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace:  
Traits:

**Replacement:** ENS João Oliveira

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace:  
Traits:

## SCIENCE DEPARTMENT

### Science Officer (department head)

Duty station: idler, any lab  
Alternate duty station: science station, bridge  
Battle station: science station, bridge  
Quarters: science officer's quarters, deck 2

**Incumbent:** SLT NFN V'ronek

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: GB (Galdorite bearer).  
Birthplace:  
Traits:

**Replacement:** LT Fatima Mohammed

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace:  
Traits:

### Astrophysics Researcher

Duty station: watch 1, science station, bridge  
Alternate duty station: idler, astrophysics lab  
Battle station: astrophysics lab, deck 3  
Quarters: starboard (science) crew quarters, deck 3

**Incumbent:** ENS Osman Yilmaz (HM: human male)

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace: Batman, Asia, Earth  
Traits: Is *very* Turkish, and will work exactly how the Turks invented every single advance in human civilization into every conversation if allowed.

**Replacement:** ENS NFN K'solmar

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: GN (Galdorite nurturer).  
Birthplace:  
Traits:

### Planetary Geology Researcher

Duty station: watch 2, science station, bridge  
Alternate duty station: idler, geology lab  
Battle station: deck 3 DC locker  
Quarters: starboard (science) crew quarters, deck 3

**Incumbent:** ENS Sophie Brochu (HF: human female)

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace: Lyon, Europe, Earth  
Traits: Is in a long-distance D/s dynamic with her boyfriend, Hans Müller (as the s-type). Frequently has conjugal visits with him in the Simulator. Friendly with Kalbar, a source of support for them. If Müller winds up on board, the two are assigned [PLACE] as their quarters.

**Replacement:** ENS NFN Zan’krokkrokkrok

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: LF (Lycenathete female).  
Birthplace:  
Traits:

### Xenolinguistics Researcher/Communications Officer

Duty station: watch 3, science station, bridge  
Alternate duty station: idler, communications station, computer core  
Battle station: communications station, computer core  
Quarters: starboard (science) crew quarters, deck 3

**Incumbent:** ENS John Paul Santos

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace:  
Traits:

**Replacement:** LT Liu Baozhai  

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace:  
Traits:

## MEDICAL DEPARTMENT

### Medical Officer/Xenobiology Researcher (department head)

Duty station: idler, sick bay  
Alternate duty station: science station, bridge  
Battle station: sick bay, deck 3  
Quarters: surgeon's quarters, deck 2

**Incumbent:** LT Hakim al-Masri, MD

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace: Alexandria, Africa, Earth  
Traits:

**Replacement:** SLT Robert "Robby" Carter, MD

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HM.  
Birthplace: Toledo, North America, Earth  
Traits:

### Nurse/Medic

Duty station: idler, sick bay  
Battle station: sick bay, deck 3  
Quarters: starboard (science) crew quarters, deck 3

**Incumbent:** WO Lucy Qitsualik

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: H2 (Human two-spirit).  
Birthplace: Taloyoak, North America, Earth  
Traits:

**Replacement:** WO Tshepo Seretse

Service Number: 123-456-7890. Date of birth: XX/XX/XX (age: yy). Species/Gender: HF.  
Birthplace: Lalibella, Africa, Earth  
Traits:

## Other Notes

101 crew:  
2 non-binary (incl. 1 alien), 7 men, 7 women (incl. 1 alien)  
14 human, 1 Kwom, 1 Galdorite  

Ethnic background:  
Europe: 2  
North America: 3  
Africa: 2  
Indosphere: 2  
Sinosphere: 1  
Dar al-Islam: 2  
Latin: 1  
Elsewhere: 1  
Non-Human: 2  

Home background:  
Earth:   
Colonies:   
Kwomnu: 1  
Galdor VII: 1  

Replacements:
3 non-binary (incl. 2 aliens), 7 women (incl. 1 alien), 6 men (incl. 1 alien)  

Ethnic background:  
Europe:   
North America:   
Africa:   
Indosphere:   
Sinosphere:   
Dar al-Islam:   
Latin:   
Elsewhere:   
Non-Human: 3  

Home background:  
Earth:   
Colonies:   
Kwomnu: 1  
Galdor VII: 1  
TOI 700e: 1  

