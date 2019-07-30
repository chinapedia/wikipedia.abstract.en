BIOFLUID DYNAMICS may be considered as the discipline of biological engineering or biomedical engineering in which the fundamental principles of fluid dynamics are used to explain the mechanisms of biological flows and their interrelationships with physiological processes, in health and in diseases/disorder. It can be considered as the conjuncture of mechanical engineering and biological engineering. It spans from cells to organs, covering diverse aspects of the functionality of systemic physiology, including cardiovascular, respiratory, reproductive, urinary, musculoskeletal and neurological systems etc. Biofluid dynamics and its simulations in computational fluid dynamics (CFD) apply to both internal as well as external flows. Internal flows such as cardiovascular blood flow and respiratory airflow, and external flows such as flying and aquatic locomotion (i.e., swimming). Biological fluid Dynamics (or Biofluid Dynamics) involves the study of the motion of biological fluids (e.g. blood flow in arteries, animal flight, fish swimming, etc.). It can be either circulatory system or respiratory systems. Understanding the circulatory system is one of the major areas of research. The respiratory system is very closely linked to the circulatory system and is very complex to study and understand. The study of Biofluid Dynamics is also directed towards finding solutions to some of the human body related diseases and disorders. The usefulness of the subject can also be understood by seeing the use of Biofluid Dynamics in the areas of physiology in order to explain how living things work and about their motions, in developing an understanding of the origins and development of various diseases related to human body and diagnosing them, in finding the cure for the diseases related to cardiovascular and pulmonary systems.


History of Bio Fluid Dynamics

The History of Bio-Fluid Dynamics may be considered very old dating back to 2700-2600 BC when for the first time a written document on circulation of blood and theories of Chinese medicine called "Internal Classics" was written by the Chinese emperor Huang ti also called as the yellow emperor.[1] The Most notable names related to the field of biofluid Dynamics are of William Harvey, Jean Louis Marie Poiseuille, and Otto Frank. In 1628, Harvey published, "An anatomical study of the motion of the heart and of the blood of animals." This was the first publication in the Western World that claimed that blood is pumped from the heart and recirculated.[2] Jean Louis Marie Poiseuille is credited with developing the theory of Poiseuille's Flow. It describes the relationship between flow and pressure gradient in long tubes with constant cross section.[3] Otto Frank published the "Fundamental form of the arterial pulse," which contained his "Windkessel theory" of circulation in 1890. He also perfected optical manometers and capsules for the precise measurement of intra-cardiac pressures and volumes.[4]


Basic Principles of Fluid Dynamics

A fluid is defined as a substance that deforms continuously under application of a shearing stress, regardless of how small the stress is. Blood is a primary example of a biological fluid. Air can also be considered as biological fluid as it flows in lungs and the synovial fluid between the knee joints is also an example of a biological fluid. Types of Fluids[5] Fluids can be classified into four basic types. They are:

1.  Ideal Fluid
2.  Real Fluid
3.  Newtonian Fluid
4.  Non-Newtonian fluid

An Ideal Fluid is a fluid that has no viscosity, means it will offer no resistance, pragmatically this type of fluid does not exist. It is incompressible in nature. Real fluids are compressible in nature. They offer some resistance and thus have viscosity. All Fluids existing are real fluids. A Newtonian Fluid is a fluid whose viscous shear stresses (acting between different layers of fluid and between the fluid layer and surface over which it is flowing) are directly proportional to the rate of change of velocity of the flow of the fluid with respect to the distance in the transverse direction (distance measured perpendicular to the flow), also known as velocity gradient. The constant of proportionality is known as the dynamic viscosity of the fluid denoted by ‘µ’. The functional relationship between viscous shear stress and velocity gradient is linear in a Newtonian fluid. This relationship may be written as :

                                                        $\tau=-\mu\frac{du}{dy}$
     Where τ = viscous shear stress
           μ = dynamic viscosity of the fluid
           $\frac{du}{dy}$ = velocity gradient across the flow

A Non-Newtonian fluid is a fluid which is different from the Newtonian fluid as the viscosity of non-Newtonian fluids is dependent on shear rate or shear rate history. In a non-Newtonian fluid, the relation between the shear stress and the shear rate is different and can even be time-dependent (Time Dependent Viscosity). Therefore, a constant coefficient of viscosity cannot be defined.

Non-Newtonian fluids change their viscosity or flow behavior under stress. If you apply a force to such fluids, the sudden application of stress can cause them to get thicker and act like a solid, or in some cases, it results in the opposite behavior and they may get runnier than they were before. Removal of the stress causes them to return to their earlier state. Not all non-Newtonian Fluids behave in the same way when stress is applied – some become more solid, others more fluid. Some non-Newtonian fluids react as a result of the amount of stress applied, while others react as a result of the length of time that stress is applied. The generalized power law for all fluids can be written as:

                                            $\tau=K (\frac{dy}{dx})^n$
      Where  K = flow consistency index
             n = Fluid behavior index, n=1 for Newtonian fluids

Thixotropic Fluid: Its viscosity decreases with stress over time. Example - Honey – keep stirring, and solid honey becomes liquid.

Rheopectic Fluid: Its viscosity increases with stress over time. Example - Cream – the longer you whip it the thicker it gets.

Shear Thinning Fluid: Its viscosity decreases with increased stress. Example – Blood, Tomato sauce.

Dilatant or shear thickening Fluid: Its viscosity increases with increased stress. Example – Oobleck (a mixture of cornstarch and water), Quicksand.

A Bingham plastic is neither a fluid nor a solid. A Bingham plastic can withstand a finite shear load and flow like a fluid when that shear stress is exceeded. Toothpaste and mayonnaise are examples of Bingham plastics. Blood is also a Bingham plastic and behaves as a solid at shear rates very close to zero. The yield stress for blood is very small, approximately in the range from 0.005 to 0.01 N/m2.

Reynolds number of the flow is defined as the ratio of inertia forces to viscous forces. Mathematically it is written as

                                                     $Re=\frac{\rho v d}{\mu}$
      Where 
             ρ = density of fluid
             v = velocity of fluid
             d = characteristic length
             μ = dynamic viscosity of fluid

The Reynolds number helps us to predict the transition between laminar and turbulent flows. Laminar flow is highly organized flow along streamlines. As velocity increases, flow can become disorganized and chaotic. This is known as turbulent flow. Laminar flow occurs in flow environments where Re < 2000. Turbulent flow is present in circumstances under which Re > 4000. The range of 2000 < Re < 4000 is known as the transition range. Most blood flow in humans is laminar, having a Re of 300 or less, it is possible for turbulence to occur at very high flow rates in the descending aorta, for example, in highly conditioned athletes. Turbulence is also common in pathological conditions such as heart murmurs and stenotic heart valves. Stenotic comes from the Greek word "stenos," meaning narrow. Stenotic means narrowed, and a stenotic heart valve is one in which the narrowing of the valve is a result of the plaque formation on the valve.

The Womersley number, or alpha parameter, is another dimensionless parameter like the Prandtl number or Reynolds number that has been used in the study of fluid dynamics. This parameter represents a ratio of transient to viscous forces, just as the Reynolds number represented a ratio of inertial to viscous forces. A characteristic frequency represents the time dependence of the parameter. The Womersley number may be written as.:[6]

                                                $\alpha=r \sqrt{\frac{\omega}{\vartheta}}$
      Where 
             α = Womersely Number
             r = vessel radius
             ω = fundamental frequency
             ϑ = kinematic viscosity = $\frac{\mu}{\rho}$

The flow profile becomes blunter near the centerline of the vessel in high frequency flows, because the inertia forces become more important than viscous forces. But viscous forces are still important near the wall as here the velocity of the flow is almost zero due to the effect of the wall and the no-slip condition. Moreover, it can be shown that the transient forces become relatively more important than viscous forces as the animal size increases.[7]


The Cardiovascular System

The Heart, arteries, and veins (a network of tubes to carry blood) constitute the cardiovascular system or circulatory system of our body which transports the blood throughout the body. The heart can be thought of as a muscular pump, consisting of four chambers, and pulsatile muscles which pump and circulates the blood through the vasculature. Arteries, arterioles, capillaries, venules, and veins make up the vasculature. The cardiovascular system circulates about 5 liters of blood at a rate of approximately 6 l/m.[8] The pulmonary and the systemic circulations are the two parts of the vasculature. The pulmonary circulation system consists of the network of blood vessels from the right heart to the lungs and back to the left heart. The rest of the blood flow loop is called systemic circulation system. The pulmonary and systemic circulations take the blood through large arteries first and then branches into smaller arteries before reaching arterioles and capillaries. After capillaries, the blood enters the venules before joining smaller veins first and then larger veins before reaching the right heart. Thus completing the cycle of blood going to heart and then coming from it and going to all parts of the body.[9] The tricuspid valve, right heart (right ventricle), pulmonary valve, pulmonary artery, lungs, pulmonary veins and right heart are the elements of the Pulmonary Circulation System. The process of gas exchange, that is, exchange of carbon dioxide with oxygen in the lungs is the main function of the pulmonary system. The de-oxygenated blood from the right ventricle is pumped to the lungs where the capillaries surrounding the alveole sacks exchange carbon dioxide for oxygen. The red blood cells and the hemoglobin present in the blood, which is the main carrier of oxygen in the blood are responsible for this exchange of gases before they are carried to the left ventricle of the heart. The systemic circulation is responsible for taking the oxygenated blood to various organs and tissues via the arterial tree before taking the deoxygenated blood to the right ventricle using the venous system (a network of veins). Arteries carry the oxygenated blood while the veins carry the deoxygenated blood.[10]


Elements of Blood and Blood Rheology

The fluids associated with the human body include air, oxygen, carbon dioxide, water, solvents, solutions, suspensions, serum, lymph, and blood. The major body fluid which acts as the lifeline of the living organisms is "Blood". Blood is an extremely complex biological fluid. It consists of blood cells suspended in plasma and other different types of cells which include white blood cells, platelets etc. The blood flow in arteries and veins are closely linked to the blood vessel properties. Carrying the oxygen and nutrients to various tissues and organs of our body, delivering carbon dioxide to the lungs and accepting oxygen, bringing the metabolic by products to the kidneys, regulating the body's defence mechanism, that is, the immune system and facilitating an effective heat and mass transfer across the body are some of the major functions which blood performs in the human body. Blood consists of the red blood cells or erythrocytes, white blood cells or leukocytes, and platelets or thrombocytes. The cells which are involved primarily in the transport of oxygen and carbon dioxide are known as Erythrocytes. The cells which are involved primarily in phagocytosis (the process of destruction of unknown particulate matter) and immune responses are known as Leukocytes; thrombocytes are the components of blood which are involved in blood clotting. In addition to these 55 to 60 percent of blood by volume consists of plasma.[11] Plasma is the transparent, amber-colored liquid in which the cellular components of blood are suspended. Plasma contains constituents such as proteins, electrolytes, hormones, and nutrients. The serum is blood plasma from which clotting factors have been removed.Blood accounts for 6 to 8 percent of body weight in normal, healthy humans.[12] The density of blood is slightly greater than the density of water at approximately 1060  kg/m3.[13] The increased density comes from the increased density of a red blood cell compared with the density of water or plasma. Rheology is the study of the deformation and flow of matter. Blood Rheology is the study of blood, especially the properties associated with the deformation and flow of blood. Blood is a non-Newtonian fluid. However, often the non-Newtonian effect is very small due to various reasons. Thus, it is important to know about the blood rheology. One of the characteristics of blood that affects the work required to cause the blood to flow through the arteries is the viscosity of blood. The viscosity of blood is in the range of 3 to 6 cP, or 0.003 to 0.006 Ns/m2.[14] Blood is a non-Newtonian fluid, which means that the viscosity of blood is not a constant with respect to the rate of shearing strain. In addition to the rate of shearing strain, the viscosity of blood is also dependent on temperature and on the volume percentage of blood that consists of red blood cells. If blood is made stationary for several seconds then clotting begins in the blood, as a result of which the viscosity of the blood increases. When the stationary state is disturbed with increasing shear rate, the clot formation is destroyed and the viscosity decreases. Moreover, the orientation of red blood cells present in the blood also affects the viscosity of blood. Thus, we can say that blood is a shear thinning fluid, i.e., viscosity decreases with increase in shear rate. Beyond a shear rate of about 100s^-1, the viscosity is nearly constant and the blood behaves like a Newtonian fluid.[15] Blood is a viscoelastic material, i.e., viscous and elastic because the effective viscosity of blood not only depends on the shear rate but also on the history of shear rate.It is also important to note that the normal blood flows much more easily compared to rigid particles, for the same particle volume fraction. This is due to the fact that red blood cells can accommodate by deforming in order to pass by one another.[16]


Fåhræus-Lindqvist effect

Robert (Robin) Sanno Fåhræus, a Swedish pathologist, and hematologist, and Johan Torsten Lindqvist, a Swedish physician, observed that when blood flows through vessels smaller than about 1.5  mm in diameter, the apparent viscosity of the fluid decreases.The viscosity of blood decreases as the percent of the diameter of a vessel occupied by the cell-free layer increases. However, when the diameter of the tube approaches the diameter of the erythrocyte, the viscosity increases dramatically. For blood flow through tubes less than approximately 1  mm in diameter, the viscosity is not constant with respect to the tube diameter. Therefore, blood behaves as a non-Newtonian fluid in such blood vessels.[17]


Applications of Biofluid Dynamics

Biofluid Dynamics refers to the study of fluid Dynamics of basic biological fluids such as blood, air etc. and has immense applications in the field of diagnosing, treating and certain surgical procedures related to the disorders/diseases which originate in the body relating to cardiovascular, pulmonary, synovial systems etc. The different types of cardiovascular diseases include Aneurysms, Angina, Atherosclerosis, Stroke, Different types of Cerebrovascular disease, Heart Failure, Coronary Heart diseases and Myocardial infarction or Heart attacks. The Computational Fluid dynamics (CFD) models prepared through software, of the arteries, veins etc. not only lead to the identification of properties of flowing blood inside arteries but also changes in viscosity can be identified which may be the result of certain underlying disease/disorder. Moreover, the stress concentration and the distribution of stresses in different biological systems carrying fluids can also be identified. This has led to a greater degree of assistance to biomedical engineers in recognizing the cause of certain diseases and thus they can easily search for the method of cure for that disease/disorder. Also, this has led to a greater degree of good research in the fields of biotechnology, Bio-Mechanics etc.


References

-   "Newtons Law of Viscosity"

Category:Biomechanics Category:Fluid dynamics

[1] Lee Waite, Jerry Fine (2007). "Applied Bio-Fluid Mechanics", The Mc Graw Hill Companies, Inc.

[2]

[3] Lee Waite, Jerry Fine (2007). "Applied BioFluid Mechanics", The Mc Graw Hill Companies, Inc.

[4]

[5] "Types of Fluids"

[6]

[7]

[8]

[9] "Bio-Fluid Dynamics, P.Nithiarasu"

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17] "Fåhræus-Lindqvist effect"