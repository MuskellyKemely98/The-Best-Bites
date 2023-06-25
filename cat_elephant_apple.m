1) clc;
2) clear;
3) close all;
4) disp('A catering service known for their mouth-watering dishes and exceptional service.');
5) 
6) %Create the menu
7) menu_items = {'Appetizers','Entrees','Desserts','Beverages'};
8) 
9) % Create the appetizers list
10) appetizers = {'Lobster Rangoons','Crab Cake Bites','Lime and Chili Wings','Cheesy Potato Skins'};
11) 
12) % Create the entrees list
13) entrees = {'Teriyaki Salmon','Marinated Tofu Steak','Seasoned Pesto Pasta','Grilled Asparagus with Prosciutto'};
14) 
15) % Create the desserts list
16) desserts = {'Tiramisu','Chocolate Cake','Fudge Brownies','Ice Cream'};
17) 
18) % Create the beverages list
19) beverages = {'Sparkling Water','Fruit Juice','Coffee','Tea'};
20) 
21) % Create structure with all menus
22) menu_struct.Appetizers = appetizers;
23) menu_struct.Entrees = entrees;
24) menu_struct.Desserts = desserts;
25) menu_struct.Beverages = beverages;
26) 
27) % Print menus
28) fprintf('MENUS\n')
29) for i = 1:length(menu_items)
30) 	fprintf('%s\n',menu_items{i});
31) 	for j = 1:length(menu_struct.(menu_items{i}))
32) 		fprintf('\t%s\n',menu_struct.(menu_items{i}){j});
33)     end
34) end
35) 
36) % Calculate the cost per person
37) cost_per_person = 15;
38) 
39) % Calculate the number of people
40) num_people = input('How many people are you expecting? ');
41) 
42) % Calculate the total cost for the dinner
43) total_cost = cost_per_person * num_people;
44) 
45) % Print the total cost
46) fprintf('The total cost for the dinner is $%.2f\n',total_cost);
47) 
48) % Ask for customer feedback
49) customer_feedback = input('How was your experience with us? ','s');
50) 
51) % Print customer feedback
52) fprintf('Thank you for your feedback: %s\n',customer_feedback);
53) 
54) % Create a discounted menu
55) discounted_menu_items = {'Appetizers','Entrees','Desserts'};
56) discounted_menu_struct.Appetizers = appetizers;
57) discounted_menu_struct.Entrees = entrees;
58) discounted_menu_struct.Desserts = desserts;
59) 
60) % Print the discounted menu
61) fprintf('DISCOUNTED MENU\n')
62) for i = 1:length(discounted_menu_items)
63)   fprintf('%s\n',discounted_menu_items{i});
64)   for j = 1:length(discounted_menu_struct.(discounted_menu_items{i}))
65)       fprintf('\t%s\n',discounted_menu_struct.(discounted_menu_items{i}){j});
66)   end
67) end
68) 
69) % Calculate the discounted cost per person
70) discounted_cost_per_person = 10;
71) 
72) % Calculate the discounted total cost
73) discounted_total_cost = discounted_cost_per_person * num_people; 
74) 
75) % Print the total discounted cost
76) fprintf('The total discounted cost is $%.2f\n',discounted_total_cost); 
77) 
78) % Ask for customer feedback
79) customer_feedback = input('How was your experience with us? ','s');
80) 
81) % Print customer feedback
82) fprintf('Thank you for your feedback: %s\n',customer_feedback);
83) 
84) % Ask if customer would like to book again
85) customer_response = input('Would you like to book us again? (yes/no) ','s');
86) 
87) % Print customer response
88) fprintf('You said "%s"\n',customer_response);
89) 
90) % Calculate the per person cost for the next event
91) if strcmp(customer_response,'yes')
92)     per_person_cost = input('What would you like to pay per person? ');
93) else
94)     per_person_cost = 0;
95) end
96) 
97) % Print the per person cost
98) fprintf('The per person cost for the next event is $%.2f\n', per_person_cost);
99) 
100) % Send thank-you email
101) subject_line = 'Thank-you for booking us!';
102) body_message = 'We thank you for choosing us for your event. We look forward to seeing you soon!';
103) sendmail('customer@email.com', subject_line, body_message);
104) 
105) % Create an array of feedback
106) feedback_arr = {customer_feedback, customer_response, per_person_cost};
107) 
108) % Save the feedback array
109) save('feedback.mat','feedback_arr')
110) 
111) % Read the feedback array
112) load('feedback.mat')
113) 
114) % Print the feedback array
115) fprintf('FEEDBACK ARRAY\n')
116) disp(feedback_arr)
117) 
118) % Create a struct of customer information
119) customer_name = input('What is the customer''s name? ','s');
120) customer_num_people = input('How many people is the customer expecting? ');
121) customer_struct.Name = customer_name;
122) customer_struct.NumPeople = customer_num_people;
123) 
124) % Save the customer information
125) save('customer_info.mat','customer_struct')
126) 
127) % Read the customer information
128) load('customer_info.mat')
129) 
130) % Print the customer information
131) fprintf('CUSTOMER INFORMATION\n')
132) disp(customer_struct)
133) 
134) % Create a matrix of menu items
135) menu_mat = [appetizers; entrees; desserts; beverages];
136) 
137) % Save the menu matrix
138) save('menu_mat.mat','menu_mat')
139) 
140) % Read the menu matrix
141) load('menu_mat.mat')
142) 
143) % Print the menu matrix
144) fprintf('MENU MATRIX\n')
145) disp(menu_mat)
146) 
147) % Create a cell array of menu items
148) menu_cell = {appetizers; entrees; desserts; beverages};
149) 
150) % Save the menu cell array
151) save('menu_cell.mat','menu_cell')
152) 
153) % Read the menu cell array
154) load('menu_cell.mat')
155) 
156) % Print the menu cell array
157) fprintf('MENU CELL ARRAY\n')
158) disp(menu_cell)
159) 
160) % Create a figure 
161) figure
162) 
163) % Plot the menus 
164) bar(menu_mat)
165) 
166) % Set the title and labels
167) title('Menu Items')
168) ylabel('Number of Items')
169) 
170) % Add legend
171) legend(menu_items)
172) 
173) 
174) % Set font size
175) set(gca,'FontSize',15)
176) 
177) % Save the figure
178) savefig('menu_figure.fig')
179) 
180) % Print a thank-you message
181) fprintf('Thank you for choosing us for your event!\n')