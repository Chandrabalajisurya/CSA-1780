% Facts about diseases and their dietary recommendations

% For diabetes, limit sugar intake and prefer high fiber
diet_for(diabetes, 'Limit sugar intake, prefer high-fiber foods like vegetables and whole grains.').

% For hypertension (high blood pressure), reduce salt intake
diet_for(hypertension, 'Reduce salt intake, consume potassium-rich foods like bananas, and avoid processed foods.').

% For high cholesterol, prefer low-fat foods and limit animal fats
diet_for(high_cholesterol, 'Choose low-fat foods, avoid fried foods, and limit animal fats. Include omega-3 rich foods like fish.').

% For celiac disease, avoid gluten-containing foods
diet_for(celiac_disease, 'Avoid gluten-containing foods like wheat, barley, and rye. Focus on gluten-free grains like rice and quinoa.').

% For obesity, eat in moderation and focus on a balanced diet
diet_for(obesity, 'Eat in moderation, focus on a balanced diet with lean proteins, vegetables, and avoid excessive fats and sugars.').

% For lactose intolerance, avoid dairy products containing lactose
diet_for(lactose_intolerance, 'Avoid dairy products that contain lactose, choose lactose-free dairy or plant-based alternatives.').

% Rule to suggest a diet based on a disease
suggest_diet(Disease) :-
    diet_for(Disease, Diet),
    write('Diet suggestion for '), write(Disease), write(': '), nl,
    write(Diet), nl.
