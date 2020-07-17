<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Titillium+Web">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<script src="https://kit.fontawesome.com/fc3420a326.js"
	crossorigin="anonymous"></script>
<style media="screen">
body {
	margin: 0;
	padding: auto;
	text-align: center;
	font-family: 'Poppins', sans-serif;
	background-image: linear-gradient(90deg, #b134eb, #5efff7);
}
 #quoteDisplay{
        font-size: xx-large;
        font-family: 'Poppins', sans-serif;
        font-style: italic;
        color: #f1f1f1;
        
    }
    .motivation{
        font-family: inherit;
        margin-bottom: 10px;
        border: none;
        color:rgb(17, 16, 16);
        background-image:  linear-gradient(60deg,#eb8334,#fcff5e);
        width: 150px;
        padding: 10px;
        border-radius: 30px;
        outline: none;
        cursor: pointer;
    }
    .motivation:hover{
        box-shadow: 1px 1px 10px #bebebe;
    } 

   #footer{
        background-color:#bebebe;
        color:#202021;
        text-shadow: blanchedalmond;
        width: 100%;
    }
</style>
<body>

                                                   <!-- NAVBAR -->


	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a href="#" class="navbar-brand"><img
			src="/static/Companylogo1.png"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="/resultpage">Home <span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					href="/logout">Logout</a>
				<!-- <a class="nav-item nav-link" href="/">New</a> -->
				<a class="nav-item nav-link" href="/timer">Timer</a> <a
					class="nav-item nav-link" href="/caloriecounter">Calorie
					Counter</a> <a class="nav-item nav-link" href="#contact">Contact</a>
			</div>
		</div>
	</nav>
	
                                                   <!-- Main Content with result-->

	<h1 style="font-weight: bolder;">Your BMI result is ${res}</h1>
	<h1 style="font-weight: bolder;">${mode}</h1>
	
                                      <!-- If BMI is less than 18.5 -->
	<c:if test="${res<18.5 }">
	
		<h1 style="font-weight: bolder;">Follow this Plan daily!</h1>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#exercise">Exercises</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#diet plan">Diet Plan</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#benefits">Benefits</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#golden tips">Golden Tips</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#coach contact">Coach Contact</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#dietician">Dietician Contact</a>
		</button>
		<br />
		<br />
		<h1 style="font-weight: bolder;">
			<a name="exercise"></a>Workout plan
		</h1>
		<div class="jumbotron"
			style="background-image: linear-gradient(120deg, #202021, #757575);">
			<div id="quoteDisplay">"The clock is ticking. Are you becoming
				the person you want to be?"</div>
			<button onclick="newQuote()" class="motivation">Click me to boost your MOTIVATION!</button>
		</div>
		<div class="jumbotron">
			<p style="font-weight: bolder;">
				<h3 style="font-weight: bolder;"><a name="exercise"></a>Do these exercise 2 sets a day after a light 
				cardio workout such us jogging,running,swimming etc.</h3>
			</p>
			<div class="card-deck">
				<div class="card">
					<a href="https://www.youtube.com/watch?v=IODxDxX7oi4"><img
						src="/static/pushup.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Push-Up</h5>
						>
						<p class="card-text">Do this 3 x 10 Repeatation. Increase your
							repeatation if you feel it easy</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=Fbqy2t8eWa8"><img
						src="/static/pullups.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Pull-Up</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Increase your
							repeatation if you feel it easy</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>

					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=YaXPRqUwItQ"><img
						src="/static/squats.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Squats</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Use a
							low-weight dumbell if you feel it easy</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
			</div>
			<br />
			<div class="card-deck">
				<div class="card">
					<a href="https://www.youtube.com/watch?v=wrwwXE_x-pQ"><img
						src="/static/lunges.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Lunges</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Use a
							low-weight dumbell if you feel it easy</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=ysUTNll8JQ8"><img
						src="/static/benchpress.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Bench Press</h5>
						<p class="card-text">Do this 3 x 10 Repeatation with low
							weight. Increase weight if you feel it easy</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=2yjwXTZQDDI"><img
						src="/static/overheadpress.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Overhead Press</h5>
						<p class="card-text">Do this 3 x 10 Repeatation with low
							weight. Increase weight if you feel it easy</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
			</div>
		</div>
		<br />
		<h1 style="font-weight: bolder;">
			<a name="diet plan"></a>Follow this diet plan to gain weight
		</h1>
		<div class="jumbotron">
			<table class="table table-dark">
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">SUNDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>2 egg brown bread sandwich + green chutney + 1 cup milk +
							3 cashews + 4 almonds + 2 walnuts</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup banana shake</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup arhar dal + 1 cup potato curry + 3 chapatti + 1/2
							cup rice + 1/2 cup low fat curd + salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup strawberry smoothie + 1 cup vegetable poha</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1.5 cup chicken curry + 3 chapatti + salad</td>
					</tr>
				</tbody>
				<br>
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">MONDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>2 egg brown bread sandwich + green chutney + 1 cup milk +
							3 cashews + 4 almonds + 2 walnuts</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup banana shake</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup arhar dal + 1 cup potato curry + 3 chapatti + 1/2
							cup rice + 1/2 cup low fat curd + salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup strawberry smoothie + 1 cup vegetable poha</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1.5 cup chicken curry + 3 chapatti + salad</td>
					</tr>

				</tbody>

				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">TUESDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>3 paneer stuffed besan cheela + green chutney + 1 cup
							curd + 3 cashews + 4 almonds + 2 walnuts</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 apple smoothie with maple syrup</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup masoor dal + 1 cup calocasia + 3 chapatti + 1/2 cup
							rice + 1 cup low curd + salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup tomato soup with bread crumbs + 1 cup aloo chaat</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup carrot peas vegetable +3 chapatti + salad</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">WEDNESDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1.5 cup vegetable bread upma + 1 cup milk + 3 cashews + 4
							almonds + 2 walnuts</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup ripe banana with 2 tsp ghee</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup rajma curry + 1 cup spinach potato + 3 chapatti +
							1/2 cup rice + salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup vegetable juice + 1 cup upma</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1.5 cup parwal vegetable + 3 chapatti + salad</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">THURSDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>2 cucmber potato sandwich + 1 tsp green chutney + 1
							orange juice + 3 cshews + 2 walnuts + 4 almonds</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup buttermilk + 1 cup sweet potato chaat</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup white chana/ fish curry + 3 chapatti + 1/2 cup rice
							+ salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup almond milk + banana</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup cauliflower potato vegetable + 3 chapatti + salad</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">FRIDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>2 cup vegetable poha + 1 cup curd + 3 cashews + 4 almonds
							+ 2 walnuts</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>2 cups watermelon juice</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup chana dal + 1 cup bhindi vegetable + 3 chapatti +
							1/2 cup rice + salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup sprouts salad + 2 potato cheela + green chutney</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup peas mushroom vegetable + 3 chapatti + salad</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">SATURDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>3 vegetable suji cheela + 1 cup strawberry shake + 4
							cashews + 4 almonds + 3 walnuts</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup coconut water + 1 cup pomegrate</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup mix dal + 1 cup soybean curry + 3 chapatti + 1/2
							cup curd + salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup fruit salad + 4 pc vegetable cutlets + green
							chutney</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup karela vegetable + 3 chaptti + salad</td>
					</tr>

				</tbody>
			</table>
		</div>
		<br />
		<div class="card bg-dark text-white">
			<a name="benefits"></a> <img src="/static/bg5.jpg" class="card-img"
				alt="..." style="opacity: 0.6;">
			<div class="card-img-overlay">
				<h1 class="card-title">Benefits of having healthy BMI value!</h1>
				<p class="card-text">Having a perfect BMI value plays an
					important role in good health. This helps in maintaining our body
					from harmful chronic health conditions, many of which become more
					difficult to treat over time. This helps us in preventing the list
					of bad health condition that includes:</p>
				<ul>
					<li>metabolic syndrome</li>
					<li>type 2 diabetes</li>
					<li>high blood pressure</li>
					<li>high triglycerides and low good cholesterol</li>
					<li>heart disease</li>
					<li>stroke</li>
					<li>sleep apnea</li>
					<li>gallbladder disease</li>
					<li>sexual health issues</li>
					<li>nonalcoholic fatty liver disease</li>
					<li>osteoarthritis</li>
					<li>mental health conditions</li>
				</ul>
				<p class="card-text">By focusing on good body health and an
					active healthy lifestyle , it may be possible to slow or prevent
					the development of these diseases.</p>
			</div>
		</div>
		<br />
		<h1 style="font-weight: bolder;">
			<a name="golden tips"></a>Follow these Golden Tips
		</h1>
		<div class="jumbotron">
			<div class="row">
				<div class="col-4">
					<div class="list-group" id="list-tab" role="tablist">
						<a class="list-group-item list-group-item-action active"
							id="list-1-list" data-toggle="list" href="#list-1" role="tab"
							aria-controls="1">Eat Calorie-Dense Foods</a> <a
							class="list-group-item list-group-item-action" id="list-2-list"
							data-toggle="list" href="#list-2" role="tab" aria-controls="2">Consume
							Healthy Carbs</a> <a class="list-group-item list-group-item-action"
							id="list-3-list" data-toggle="list" href="#list-3" role="tab"
							aria-controls="3">Consume A Protein Source With Every Meal</a> <a
							class="list-group-item list-group-item-action" id="list-4-list"
							data-toggle="list" href="#list-4" role="tab" aria-controls="4">Add
							Healthy Fats To Your Diet</a> <a
							class="list-group-item list-group-item-action" id="list-5-list"
							data-toggle="list" href="#list-5" role="tab" aria-controls="5">Take
							Weight Gain Supplements</a> <a
							class="list-group-item list-group-item-action" id="list-6-list"
							data-toggle="list" href="#list-6" role="tab" aria-controls="6">Strength
							Training</a> <a class="list-group-item list-group-item-action"
							id="list-7-list" data-toggle="list" href="#list-7" role="tab"
							aria-controls="7">Eliminate Stress</a> <a
							class="list-group-item list-group-item-action" id="list-8-list"
							data-toggle="list" href="#list-8" role="tab" aria-controls="8">Get
							Enough Sleep</a> <a class="list-group-item list-group-item-action"
							id="list-9-list" data-toggle="list" href="#list-9" role="tab"
							aria-controls="9">Track Your Goal</a> <a
							class="list-group-item list-group-item-action" id="list-10-list"
							data-toggle="list" href="#list-10" role="tab" aria-controls="10">Keep
							Yourself Motivated</a>
					</div>
				</div>
				<div class="col-8">
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="list-1" role="tabpanel"
							aria-labelledby="list-1-list">Foods high in calories and
							balanced in nutrients will help you gain weight. Foods like
							avocado, banana, and full-fat milk should be your staple.</div>
						<div class="tab-pane fade" id="list-2" role="tabpanel"
							aria-labelledby="list-2-list">Carbohydrates can help in
							weight gain. Replace high sugar and refined carbs like
							chocolates, donuts, pizzas with healthier options like banana,
							potato, sweet potato, whole grains, rice, and fruits, etc.</div>
						<div class="tab-pane fade" id="list-3" role="tabpanel"
							aria-labelledby="list-3-list">Your muscles are made of
							proteins. To gain weight and build lean muscle mass, you must
							include a protein source in every meal you consume. Aim to take
							1.5 to 2 gm of protein for every kg of body weight. Chicken
							breast, ground turkey, tofu, legumes and beans, nuts and seeds,
							fish, eggs, milk, and yogurt should be your go-to choices of
							protein.</div>
						<div class="tab-pane fade" id="list-4" role="tabpanel"
							aria-labelledby="list-4-list">Do not consume just any fatty
							food. Choose healthy fats that do not cause harm in the long run.
							Healthy fats are also good sources of omega-3 and omega-6 fatty
							acids. Include foods like avocado, nuts, seeds, avocado oil,
							salmon, and olive oil in your diet. Eating a fistful of pumpkin
							or flaxseeds is a good way to provide your body with healthy fat.</div>
						<div class="tab-pane fade" id="list-5" role="tabpanel"
							aria-labelledby="list-5-list">In some cases, diet and
							exercise alone may not bring about the desired results. Another
							way to go about this is by including some additional supplements
							in your diet. Whey protein is an increasingly popular supplement
							you can add to your milk or smoothies.</div>
						<div class="tab-pane fade" id="list-6" role="tabpanel"
							aria-labelledby="list-6-list">Gaining weight does not mean
							you have to gain fat mass. Gain lean muscle mass. You will look
							toned and defined. To get there, you need to hit the gym at least
							2 to 4 times a week and lift some weights. If you have any
							medical conditions, talk to your doctor before you hit the gym.</div>
						<div class="tab-pane fade" id="list-7" role="tabpanel"
							aria-labelledby="list-7-list">Losing or gaining weight
							could be a stressful event. Stress often becomes a major hurdle
							when you try to achieve a goal. Therefore, it is important to
							reduce stress. Have a relaxing bath to reduce stress. Put on some
							good music and dance until you drop. Meditation, yoga, and
							breathing exercises also work well to reduce stress.</div>
						<div class="tab-pane fade" id="list-8" role="tabpanel"
							aria-labelledby="list-8-list">Sleep is an essential
							determinant of your health and well-being. A person needs a
							minimum of eight hours of sleep every night to stay fit and fine.
							A cross-sectional study on Chinese University students revealed
							that good quality sleep helped strengthen muscle mass as compared
							to poor quality sleep .</div>
						<div class="tab-pane fade" id="list-9" role="tabpanel"
							aria-labelledby="list-9-list">Tracking your goal increases
							your chances of hitting your target. Maintain a food journal to
							write your calorie goal and track the foods that you eat. Check
							your weight every week or 10 days. This not only motivates you
							but also helps you analyze your progress better. You can even
							track your exercise pattern and start measuring muscle gain.</div>
						<div class="tab-pane fade" id="list-10" role="tabpanel"
							aria-labelledby="list-10-list">Weight gain is not rocket
							science; it requires a scientific approach and well disciplined
							lifestyle. Be patient and keep yourself motivated. Do not aim to
							gain more than four pounds a month. Looking for faster weight
							gain could be unhealthy and may only give you temporary results.</div>
					</div>
				</div>
			</div>
		</div>
		<br />

	</c:if>
	
	                           <!-- If BMI is less than 25 and more than 18.5 -->
	
	<c:if test="${res>=18.5 && res<25 }">
		
		<h1 style="font-weight: bolder;">Follow this Plan daily!</h1>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#exercise">Exercises</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#diet plan">Diet Plan</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#benefits">Benefits</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#golden tips">Golden Tips</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#coach contact">Coach Contact</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#dietician">Dietician Contact</a>
		</button>
		
		<br />
		<br />
		<h1 style="font-weight: bolder;">
			<a name="exercise"></a>Workout plan
		</h1>
		<div class="jumbotron"
			style="background-image: linear-gradient(120deg, #202021, #757575);">
			<div id="quoteDisplay">"The clock is ticking. Are you becoming
				the person you want to be?"</div>
			<button onclick="newQuote()" class="motivation">Click me to boost your MOTIVATION!</button>
		</div>
		<div class="jumbotron" style="background-color: #8f8f8f;">
			<h3 style="font-weight: bolder;">Do these exercise 2 sets a day
				after cardio workout such us jogging,running,swimming etc.</h3>
			<div class="card-deck">
				<div class="card">
					<a href="https://www.youtube.com/watch?v=vRKDvt695pg"><img
						src="/static/deadlift.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Deadlift</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Increase
							weight if you feel it easy</p>
								<small class="text-muted">Click on the image for video
								tutorial</small>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=ASdvN_XEl_c"><img
						src="/static/planks.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Planks</h5>
						<p class="card-text">Do This 2 times for 30 sec each. Increase
							time if you feel it easy</p>
								<small class="text-muted">Click on the image for video
								tutorial</small>

					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=nKCJ9nul9-Q"><img
						src="/static/jumping.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">jumping knee tucks</h5>
						<p class="card-text">Do This 2 times for 30 sec each. Increase
							time if you feel it easy</p>
								<small class="text-muted">Click on the image for video
								tutorial</small>

					</div>
				</div>
			</div>
			<br />
			<div class="card-deck">
				<div class="card">
					<a href="https://www.youtube.com/watch?v=hXTc1mDnZCw"><img
						src="/static/row.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">bodyweight row</h5>
						<p class="card-text">Do this 3 x 10 Repeatation.</p>
	<small class="text-muted">Click on the image for video
								tutorial</small>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=nmwgirgXLYM"><img
						src="/static/climber.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Mountain Climber</h5>
						<p class="card-text">Do this exercise for 30 sec min. Increase
							time if you feel easy</p>
						<p class="card-text">
								<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=6kALZikXxLc"><img
						src="/static/dips.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Tricep Dips</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Increase rep
							if you feel easy</p>
								<small class="text-muted">Click on the image for video
								tutorial</small>

					</div>
				</div>
			</div>
		</div>
		<br />

		<h1 style="font-weight: bolder;">
			<a name="diet plan"></a>Follow this diet plan to be fit!
		</h1>
		<div class="jumbotron">
			<table class="table table-dark" border-radius=10px>
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">SUNDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>Oats Porridge in Skimmed Milk(1 bowl) Mixed Nuts(25
							grams)</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>Skimmed Milk Paneer(100 grams)</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>Dal(1 katori)Gajar Matar Sabzi(1 katori) Roti (1
							roti/chapati)</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup vegetable soup</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>Dal(1 katori)Lauki Sabzi(1 katori) Roti (1 roti/chapati)</td>
					</tr>
				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">MONDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>Curd(1.5 katori)Mixed Vegetable Stuffed Roti(2 piece)</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>Mixed Vegetable Salad(1 katori)</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>Apple(0.5 small (2-3/4 dia))Buttermilk(1 glass)</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup pomegranate</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>Sauteed Vegetables with Paneer(1 katori)Roti (1
							roti/chapati) Green Chutney(2 tablespoon)</td>
					</tr>

				</tbody>

				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">TUESDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>Skim Milk Yoghurt(1 cup (8 fl oz))Multigrain Toast(2
							toast)</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 apple</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>Sauteed Vegetables with Paneer(1 katori)Roti (1
							roti/chapati) Green Chutney(2 tablespoon)</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>Banana + Buttermilk(1 glass)</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>Lentil Curry(0.75 bowl)Methi Rice(0.5 katori)</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">WEDNESDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>Fruit and Nuts Yogurt Smoothie(0.75 glass) Egg Omelette(1
							serve(one egg))</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>Skimmed Milk Paneer(100 grams)</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>Green Gram Whole Dal Cooked(1 katori)Bhindi sabzi(1
							katori) Roti (1 roti/chapati)</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup vegetable soup</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>Palak Chole(1 bowl)Steamed Rice(0.5 katori)</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">THURSDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 cucmber hungcurd sandwich + 1/2 tsp green chutney + 1
							orange</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup buttermilk</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>Low Fat Paneer Curry(1.5 katori)Missi Roti(1 roti)</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>Mixed Vegetable Salad(1 katori)</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>Curd(1.5 katori)Aloo Baingan Tamatar Ki Sabzi(1 katori)
							Roti (1 roti/chapati)</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">FRIDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>Mixed Sambar(1 bowl)Idli(2 idli)</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup watermelon</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>Curd(1.5 katori)Aloo Baingan Tamatar Ki Sabzi(1 katori)
							Roti (1 roti/chapati)</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup sprouts salad</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>Green Gram Whole Dal Cooked(1 katori)Bhindi sabzi(1
							katori) Roti (1 roti/chapati)</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">SATURDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>Besan Chilla(2 cheela)Green Garlic Chutney(3 tablespoon)
						</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>Mixed Vegetable Salad(1 katori)</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>Palak Chole(1 bowl)Steamed Rice(0.5 katori)</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup fruit salad</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>Low Fat Paneer Curry(1 katori)Missi Roti(1 roti)</td>
					</tr>

				</tbody>
			</table>
		</div>
		<br />
		<div class="card bg-dark text-white">
			<a name="benefits"></a> <img src="/static/bg5.jpg" class="card-img"
				alt="..." style="opacity: 0.6;">
			<div class="card-img-overlay">
				<h1 class="card-title">Benefits of having healthy BMI value!</h1>
				<p class="card-text">Having a perfect BMI value plays an
					important role in good health. This helps in maintaining our body
					from harmful chronic health conditions, many of which become more
					difficult to treat over time. This helps us in preventing the list
					of bad health condition that includes:</p>
				<ul>
					<li>metabolic syndrome</li>
					<li>type 2 diabetes</li>
					<li>high blood pressure</li>
					<li>high triglycerides and low good cholesterol</li>
					<li>heart disease</li>
					<li>stroke</li>
					<li>sleep apnea</li>
					<li>gallbladder disease</li>
					<li>sexual health issues</li>
					<li>nonalcoholic fatty liver disease</li>
					<li>osteoarthritis</li>
					<li>mental health conditions</li>
				</ul>
				<p class="card-text">By focusing on good body health and an
					active healthy lifestyle , it may be possible to slow or prevent
					the development of these diseases.</p>
			</div>
		</div>
		<br />
		<h1 style="font-weight: bolder;">
			<a name="golden tips"></a>Follow these Golden Tips
		</h1>
		<div class="jumbotron">
			<div class="row">
				<div class="col-4">
					<div class="list-group" id="list-tab" role="tablist">
						<a class="list-group-item list-group-item-action active"
							id="list-1-list" data-toggle="list" href="#list-1" role="tab"
							aria-controls="1">Avoid Processed Foods</a> <a
							class="list-group-item list-group-item-action" id="list-2-list"
							data-toggle="list" href="#list-2" role="tab" aria-controls="2">
							Add Protein to Your Diet</a> <a
							class="list-group-item list-group-item-action" id="list-3-list"
							data-toggle="list" href="#list-3" role="tab" aria-controls="3">
							Stock Up on Healthy Foods and Snacks</a> <a
							class="list-group-item list-group-item-action" id="list-4-list"
							data-toggle="list" href="#list-4" role="tab" aria-controls="4">
							Drink Water</a> <a class="list-group-item list-group-item-action"
							id="list-5-list" data-toggle="list" href="#list-5" role="tab"
							aria-controls="5">Avoid Liquid Calories</a> <a
							class="list-group-item list-group-item-action" id="list-6-list"
							data-toggle="list" href="#list-6" role="tab" aria-controls="6">Strength
							Training</a> <a class="list-group-item list-group-item-action"
							id="list-7-list" data-toggle="list" href="#list-7" role="tab"
							aria-controls="7">Eliminate Stress</a> <a
							class="list-group-item list-group-item-action" id="list-8-list"
							data-toggle="list" href="#list-8" role="tab" aria-controls="8">Get
							Enough Sleep</a> <a class="list-group-item list-group-item-action"
							id="list-9-list" data-toggle="list" href="#list-9" role="tab"
							aria-controls="9">Fast Intermittently</a> <a
							class="list-group-item list-group-item-action" id="list-10-list"
							data-toggle="list" href="#list-10" role="tab" aria-controls="10">Keep
							Yourself Motivated</a> <a
							class="list-group-item list-group-item-action" id="list-11-list"
							data-toggle="list" href="#list-11" role="tab" aria-controls="11">Track
							Your Goal</a>
					</div>
				</div>
				<div class="col-8">
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="list-1" role="tabpanel"
							aria-labelledby="list-1-list">Processed foods are usually
							high in added sugars, added fats and calories. What's more,
							processed foods are engineered to make you eat as much as
							possible. They are much more likely to cause addictive-like
							eating than unprocessed foods</div>
						<div class="tab-pane fade" id="list-2" role="tabpanel"
							aria-labelledby="list-2-list">When it comes to weight loss,
							protein is the king of nutrients. A high-protein diet can also
							make you feel more full and reduce your appetite. In fact, some
							studies show that people eat over 400 fewer calories per day on a
							high-protein diet</div>
						<div class="tab-pane fade" id="list-3" role="tabpanel"
							aria-labelledby="list-3-list">Studies have shown that the
							food you keep at home greatly affects weight and eating behavior.
							By always having healthy food available, you reduce the chances
							of you or other family members eating unhealthy. There are also
							many healthy and natural snacks that are easy to prepare and take
							with you on the go.</div>
						<div class="tab-pane fade" id="list-4" role="tabpanel"
							aria-labelledby="list-4-list">There is actually truth to
							the claim that drinking water can help with weight loss. Drinking
							0.5 liters (17 oz) of water may increase the calories you burn by
							24 to 30% for an hour afterward. Drinking water before meals may
							also lead to reduced calorie intake, especially for middle-aged
							and older people. Water is particularly good for weight loss when
							it replaces other beverages that are high in calories and sugar.</div>
						<div class="tab-pane fade" id="list-5" role="tabpanel"
							aria-labelledby="list-5-list">Liquid calories come from
							beverages like sugary soft drinks, fruit juices, chocolate milk
							and energy drinks. These drinks are bad for health in several
							ways, including an increased risk of obesity. One study showed a
							drastic 60% increase in the risk of obesity among children, for
							each daily serving of a sugar-sweetened beverage.</div>
						<div class="tab-pane fade" id="list-6" role="tabpanel"
							aria-labelledby="list-6-list">Gaining weight does not mean
							you have to gain fat mass. Gain lean muscle mass. You will look
							toned and defined. To get there, you need to hit the gym at least
							2-4 times a week and lift some weights. If you have any medical
							conditions, talk to your doctor before you hit the gym.</div>
						<div class="tab-pane fade" id="list-7" role="tabpanel"
							aria-labelledby="list-7-list">Losing or gaining weight
							could be a stressful event. Stress often becomes a major hurdle
							when you try to achieve a goal. Therefore, it is important to
							reduce stress. Have a relaxing bath to reduce stress. Put on some
							good music and dance until you drop. Meditation, yoga, and
							breathing exercises also work well to reduce stress.</div>
						<div class="tab-pane fade" id="list-8" role="tabpanel"
							aria-labelledby="list-8-list">Sleep is an essential
							determinant of your health and well-being. A person needs a
							minimum of eight hours of sleep every night to stay fit and fine.
							A cross-sectional study on Chinese University students revealed
							that good quality sleep helped strengthen muscle mass as compared
							to poor quality sleep .</div>
						<div class="tab-pane fade" id="list-9" role="tabpanel"
							aria-labelledby="list-9-list">Intermittent fasting is an
							eating pattern that cycles between periods of fasting and eating.
							There are a few different ways to do intermittent fasting,
							including the 5:2 diet, the 16:8 method and the eat-stop-eat
							method. Generally, these methods make you eat fewer calories
							overall, without having to consciously restrict calories during
							the eating periods. This should lead to weight loss, as well as
							numerous other health benefits.</div>
						<div class="tab-pane fade" id="list-10" role="tabpanel"
							aria-labelledby="list-10-list">Weight gain is not rocket
							science; it requires a scientific approach and well disciplined
							lifestyle. Be patient and keep yourself motivated. Do not aim to
							gain more than four pounds a month. Looking for faster weight
							gain could be unhealthy and may only give you temporary results.</div>
						<div class="tab-pane fade" id="list-11" role="tabpanel"
							aria-labelledby="list-11-list">Tracking your goal increases
							your chances of hitting your target. Maintain a food journal to
							write your calorie goal and track the foods that you eat. Check
							your weight every week or 10 days. This not only motivates you
							but also helps you analyze your progress better. You can even
							track your exercise pattern and start measuring muscle gain.</div>
					</div>
				</div>
			</div>
		</div>
		<br />
		
	</c:if>
	
	                            <!-- If BMI is less than 30 and more than 25 -->
	
	<c:if test="${res>=25 && res<30 }">
		


		<h1 style="font-weight: bolder;">Follow this plan daily!</h1>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#exercise">Exercises</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#diet plan">Diet Plan</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#benefits">Benefits</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#golden tips">Golden Tips</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#coach contact">Coach Contact</a>
		</button>
			<button type="button" class="btn btn-light btn-lg">
			<a href="#dietician">Dietician Contact</a>
		</button>
		<br />
		<br />
			<h1 style="font-weight: bolder;">
			<a name="exercise"></a>Workout plan
		</h1>
		<div class="jumbotron"
			style="background-image: linear-gradient(120deg, #202021, #757575);">
			<div id="quoteDisplay">"The clock is ticking. Are you becoming
				the person you want to be?"</div>
			<button onclick="newQuote()" class="motivation">Click me to boost your MOTIVATION!</button>
		</div>
		<div class="jumbotron">
			<h3 style="font-weight: bolder;">
				<a name="exercise"></a>Do these exercise 2 sets in a day after
				cardio workout such us jogging,running,swimming etc.
			</h3>
			<div class="card-deck">
				<div class="card">
					<a href="https://www.youtube.com/watch?v=nmwgirgXLYM"><img
						src="/static/climber.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Mountain Climber</h5>
						<p class="card-text">Do this exercise for 30 sec min.</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=u6oYV3aaKNc"><img
						src="/static/high.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">High Stepping</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Increase your
							repeatation if you feel it easy</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=KJbMeSAAZVI"><img
						src="/static/twist.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Russian Twist</h5>
						<p class="card-text">Do this exercise for 30 sec min</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>

			</div>
			<br />
			<div class="card-deck">
				<div class="card">
					<a href="https://www.youtube.com/watch?v=YyvSfVjQeL0"><img
						src="/static/seatleg.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Seated Leg Extension</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Increase
							weight if you feel it easy</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=U4s4mEQ5VqU"><img
						src="/static/jumpsquats.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Jump Squats</h5>
						<p class="card-text">Do this 3 x 10 Repeatation.</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=evXOlgLTPCw"><img
						src="/static/reversefly.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Dumbbell Reverse Fly</h5>
						<p class="card-text">Do this 3 x 10 Repeatation with low
							weight. Increase weight if you feel it easy</p>
						<p class="card-text">
							<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
			</div>
		</div>
		<br />
		<h1 style="font-weight: bolder;">
			<a name="diet plan"></a>Follow this diet plan to reduce weight
		</h1>
		<div class="jumbotron">
			<table class="table table-dark" border-radius=10px>
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">SUNDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 serving Baked Banana-Nut Oatmeal Cups + 1 medium apple</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 clementine</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 serving Veggie & Hummus Sandwich</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 medium banana</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 serving Sheet-Pan Chicken Fajita Bowls with 1/2 cup
							cooked brown rice</td>
					</tr>
				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">MONDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 serving Baked Banana-Nut Oatmeal Cups + 1 medium apple</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 oz. Cheddar cheese + 1 hard-boiled egg</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 serving Chipotle-Lime Cauliflower Taco Bowls</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 clementine</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 serving Zucchini-Chickpea Veggie Burgers with
							Tahini-Ranch Sauce</td>
					</tr>

				</tbody>

				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">TUESDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 serving Baked Banana-Nut Oatmeal Cups + 1 medium apple</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>2 clementines</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 serving Chipotle-Lime Cauliflower Taco Bowls</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 medium banana</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 serving Easy Salmon Cakes over 2 cups baby spinach</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">WEDNESDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 serving Muesli with Raspberries</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 clementine</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 serving Chipotle-Lime Cauliflower Taco Bowls</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1/2 cup raspberries</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 serving Chicken & Cucumber Lettuce Wraps with Peanut
							Sauce</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">THURSDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 serving Muesli with Raspberries</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1/2 oz. Cheddar cheese + 1 hard-boiled egg</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 serving Chipotle-Lime Cauliflower Taco Bowls</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup low fat milk (no sugar)</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 serving Mediterranean Ravioli with Artichokes & Olives</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">FRIDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 serving Muesli with Raspberries</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 medium apple</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 serving Veggie & Hummus Sandwich</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 hard-boiled egg</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 serving Curried Sweet Potato & Peanut Soup + 1 (1-in.)
							slice whole-wheat baguette</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">SATURDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 serving "Egg in a Hole" Peppers with Avocado Salsa</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 serving Curried Sweet Potato & Peanut Soup</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup raspberries + 1 oz. dark chocolate</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup fruit salad</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 serving Spinach & Artichoke Dip Pasta</td>
					</tr>

				</tbody>
			</table>
		</div>
		<br />
		<div class="card bg-dark text-white">
			<img src="/static/bg5.jpg" class="card-img" alt="..." style="opacity: 0.6;">
			<div class="card-img-overlay">
				<h1 class="card-title">
					<a name="benefits"></a>Why does prevention matter?
				</h1>
				<p class="card-text">Preventing obesity plays an important role
					in good health. Obesity is associated with a long list of chronic
					health conditions, many of which become more difficult to treat
					over time. These conditions include:</p>
				<ul>
					<li>metabolic syndrome</li>
					<li>type 2 diabetes</li>
					<li>high blood pressure</li>
					<li>high triglycerides and low good cholesterol</li>
					<li>heart disease</li>
					<li>stroke</li>
					<li>sleep apnea</li>
					<li>gallbladder disease</li>
					<li>sexual health issues</li>
					<li>nonalcoholic fatty liver disease</li>
					<li>osteoarthritis</li>
					<li>mental health conditions</li>
				</ul>
				<p class="card-text">By focusing on obesity prevention and
					lifestyle changes, it may be possible to slow or prevent the
					development of these diseases.</p>
			</div>
		</div>
		<br />
		<h1 style="font-weight: bolder;">
			<a name="golden tips"></a>Follow these Golden Tips
		</h1>
		<div class="jumbotron">
			<div class="row">
				<div class="col-4">
					<div class="list-group" id="list-tab" role="tablist">
						<a class="list-group-item list-group-item-action active"
							id="list-1-list" data-toggle="list" href="#list-1" role="tab"
							aria-controls="1">Avoid Processed Foods</a> <a
							class="list-group-item list-group-item-action" id="list-2-list"
							data-toggle="list" href="#list-2" role="tab" aria-controls="2">
							Add Protein to Your Diet</a> <a
							class="list-group-item list-group-item-action" id="list-3-list"
							data-toggle="list" href="#list-3" role="tab" aria-controls="3">
							Stock Up on Healthy Foods and Snacks</a> <a
							class="list-group-item list-group-item-action" id="list-4-list"
							data-toggle="list" href="#list-4" role="tab" aria-controls="4">
							Drink Water</a> <a class="list-group-item list-group-item-action"
							id="list-5-list" data-toggle="list" href="#list-5" role="tab"
							aria-controls="5">Avoid Liquid Calories</a> <a
							class="list-group-item list-group-item-action" id="list-6-list"
							data-toggle="list" href="#list-6" role="tab" aria-controls="6">Strength
							Training</a> <a class="list-group-item list-group-item-action"
							id="list-7-list" data-toggle="list" href="#list-7" role="tab"
							aria-controls="7">Eliminate Stress</a> <a
							class="list-group-item list-group-item-action" id="list-8-list"
							data-toggle="list" href="#list-8" role="tab" aria-controls="8">Get
							Enough Sleep</a> <a class="list-group-item list-group-item-action"
							id="list-9-list" data-toggle="list" href="#list-9" role="tab"
							aria-controls="9">Fast Intermittently</a> <a
							class="list-group-item list-group-item-action" id="list-10-list"
							data-toggle="list" href="#list-10" role="tab" aria-controls="9">Engage
							in regular aerobic activity</a> <a
							class="list-group-item list-group-item-action" id="list-11-list"
							data-toggle="list" href="#list-11" role="tab" aria-controls="10">Keep
							Yourself Motivated</a> <a
							class="list-group-item list-group-item-action" id="list-12-list"
							data-toggle="list" href="#list-12" role="tab" aria-controls="11">Track
							Your Goal</a>
					</div>
				</div>
				<div class="col-8">
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="list-1" role="tabpanel"
							aria-labelledby="list-1-list">Processed foods are usually
							high in added sugars, added fats and calories. What's more,
							processed foods are engineered to make you eat as much as
							possible. They are much more likely to cause addictive-like
							eating than unprocessed foods</div>
						<div class="tab-pane fade" id="list-2" role="tabpanel"
							aria-labelledby="list-2-list">When it comes to weight loss,
							protein is the king of nutrients. A high-protein diet can also
							make you feel more full and reduce your appetite. In fact, some
							studies show that people eat over 400 fewer calories per day on a
							high-protein diet</div>
						<div class="tab-pane fade" id="list-3" role="tabpanel"
							aria-labelledby="list-3-list">Studies have shown that the
							food you keep at home greatly affects weight and eating behavior.
							By always having healthy food available, you reduce the chances
							of you or other family members eating unhealthy. There are also
							many healthy and natural snacks that are easy to prepare and take
							with you on the go.</div>
						<div class="tab-pane fade" id="list-4" role="tabpanel"
							aria-labelledby="list-4-list">There is actually truth to
							the claim that drinking water can help with weight loss. Drinking
							0.5 liters (17 oz) of water may increase the calories you burn by
							24 to 30% for an hour afterward. Drinking water before meals may
							also lead to reduced calorie intake, especially for middle-aged
							and older people. Water is particularly good for weight loss when
							it replaces other beverages that are high in calories and sugar.</div>
						<div class="tab-pane fade" id="list-5" role="tabpanel"
							aria-labelledby="list-5-list">Liquid calories come from
							beverages like sugary soft drinks, fruit juices, chocolate milk
							and energy drinks. These drinks are bad for health in several
							ways, including an increased risk of obesity. One study showed a
							drastic 60% increase in the risk of obesity among children, for
							each daily serving of a sugar-sweetened beverage.</div>
						<div class="tab-pane fade" id="list-6" role="tabpanel"
							aria-labelledby="list-6-list">Gaining weight does not mean
							you have to gain fat mass. Gain lean muscle mass. You will look
							toned and defined. To get there, you need to hit the gym at least
							2-4 times a week and lift some weights. If you have any medical
							conditions, talk to your doctor before you hit the gym.</div>
						<div class="tab-pane fade" id="list-7" role="tabpanel"
							aria-labelledby="list-7-list">Losing or gaining weight
							could be a stressful event. Stress often becomes a major hurdle
							when you try to achieve a goal. Therefore, it is important to
							reduce stress. Have a relaxing bath to reduce stress. Put on some
							good music and dance until you drop. Meditation, yoga, and
							breathing exercises also work well to reduce stress.</div>
						<div class="tab-pane fade" id="list-8" role="tabpanel"
							aria-labelledby="list-8-list">Sleep is an essential
							determinant of your health and well-being. A person needs a
							minimum of eight hours of sleep every night to stay fit and fine.
							A cross-sectional study on Chinese University students revealed
							that good quality sleep helped strengthen muscle mass as compared
							to poor quality sleep .</div>
						<div class="tab-pane fade" id="list-9" role="tabpanel"
							aria-labelledby="list-9-list">Intermittent fasting is an
							eating pattern that cycles between periods of fasting and eating.
							There are a few different ways to do intermittent fasting,
							including the 5:2 diet, the 16:8 method and the eat-stop-eat
							method. Generally, these methods make you eat fewer calories
							overall, without having to consciously restrict calories during
							the eating periods. This should lead to weight loss, as well as
							numerous other health benefits.</div>
						<div class="tab-pane fade" id="list-10" role="tabpanel"
							aria-labelledby="list-10-list">Incorporating regular
							physical activity into your schedule is important for maintaining
							or losing weight, among other benefits. The CDCTrusted Source
							recommends 150 minutes of moderate aerobic activity or 75 minutes
							of vigorous aerobic activity per week.</div>
						<div class="tab-pane fade" id="list-11" role="tabpanel"
							aria-labelledby="list-11-list">Weight gain is not rocket
							science; it requires a scientific approach and well disciplined
							lifestyle. Be patient and keep yourself motivated. Do not aim to
							gain more than four pounds a month. Looking for faster weight
							gain could be unhealthy and may only give you temporary results.</div>
						<div class="tab-pane fade" id="list-12" role="tabpanel"
							aria-labelledby="list-12-list">Tracking your goal increases
							your chances of hitting your target. Maintain a food journal to
							write your calorie goal and track the foods that you eat. Check
							your weight every week or 10 days. This not only motivates you
							but also helps you analyze your progress better. You can even
							track your exercise pattern and start measuring muscle gain.</div>
					</div>
				</div>
			</div>
		</div>
		<br />
		
	</c:if>
	
	                                        <!-- If BMI is more than 30 -->
	
	<c:if test="${res>=30}">
		
		<h1 style="font-weight: bolder;">Follow this plan daily!</h1>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#exercise">Exercises</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#diet plan">Diet Plan</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#benefits">Benefits</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#golden tips">Golden Tips</a>
		</button>
		<button type="button" class="btn btn-light btn-lg">
			<a href="#coach contact">Coach Contact</a>
		</button>
			<button type="button" class="btn btn-light btn-lg">
			<a href="#dietician">Dietician Contact</a>
		</button>
		<br />
		<br />
		<h1 style="font-weight: bolder;">
			<a name="exercise"></a>Workout plan
		</h1>
		<div class="jumbotron"
			style="background-image: linear-gradient(120deg, #202021, #757575);">
			<div id="quoteDisplay">"The clock is ticking. Are you becoming
				the person you want to be?"</div>
			<button onclick="newQuote()" class="motivation">Click me to boost your MOTIVATION!</button>
		</div>
		<div class="jumbotron">
			<h3 style="font-weight: bolder;">
				<a name="#exercise"></a>Do these exercise 2 sets a day after
				cardio workout such us jogging,running,swimming etc.
			</h3>
			<div class="card-deck">
				<div class="card">
					<a href="https://www.youtube.com/watch?v=RKT5gr5YplI"><img
						src="/static/inclinepushup.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Incline Push-Up</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Increase your
							repeatation if you feel it easy</p>
								<small class="text-muted">Click on the image for video
								tutorial</small>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=F72adrSjfiU"><img
						src="/static/reverse.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Steps-up to Reverse Lunges</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Increase your
							repeatation if you feel it easy</p>
								<small class="text-muted">Click on the image for video
								tutorial</small>

					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=5wxJNcw3jqM"><img
						src="/static/uni.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Unilateral Rows With Bilateral Stance</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Use a
							low-weight dumbell if you feel it easy</p>
								<small class="text-muted">Click on the image for video
								tutorial</small>

					</div>
				</div>
			</div>
			<br />
			<div class="card-deck">
				<div class="card">
					<a href="https://www.youtube.com/watch?v=wPM8icPu6H8"><img
						src="/static/hipbridge.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Hip Bridge</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Use a
							low-weight dumbell on your abdomen if you feel it easy</p>
							<small class="text-muted">Click on the image for video
								tutorial</small>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=vevRqEDHm1g"><img
						src="/static/sidelunges.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Side Lunge With Torso Rotation</h5>
						<p class="card-text">Do this 3 x 10 Repeatation. Use a
							low-weight dumbell if you feel it easy</p>
						<p class="card-text">
								<small class="text-muted">Click on the image for video
								tutorial</small>
						</p>
					</div>
				</div>
				<div class="card">
					<a href="https://www.youtube.com/watch?v=61ara6KJdrU"><img
						src="/static/cable.gif" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h5 class="card-title">Standing Cable Machine Rotation</h5>
						<p class="card-text">Do this 3 x 10 Repeatation with low
							weight. Increase weight if you feel it easy</p>
							<small class="text-muted">Click on the image for video
								tutorial</small>
					</div>
				</div>
			</div>
		</div>
		<br />
		<h1 style="font-weight: bolder;">
			<a name="diet plan"></a>Follow this diet plan to reduce weight
		</h1>
		<div class="jumbotron">
			<table class="table table-dark" border-radius=10px>
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">SUNDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>3 egg whites + 1 toasted brown bread + 1/2 cup low fat
							milk (no sugar)</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup papaya</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup arhar dal + 1 chapatti + 1/2 cup low fat curd +
							salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup vegetable soup</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup pumpkin + 1 chapatti + salad</td>
					</tr>
				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">MONDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 onion stuffed chapatti + 1/2 cup low fat curd</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup coconut water</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup moong dal/ chicken curry + 1 chapatti + salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup pomegranate</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup beans + 1 chapatti + salad</td>
					</tr>

				</tbody>

				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">TUESDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>2 besan cheela + 1/2 cup low fat curd</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 apple</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup masoor dal + 1 chapatti + 1/2 up low fat curd +
							salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup tomato soup</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup carrot peas vegetable +1 chapatti + salad</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">WEDNESDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 cup vegetable brown bread upma + 1/2 cup low fat milk
							(no sugar)</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup musk melon</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup rajma curry + 1 chapatti + salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup vegetable soup</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup parwal vegetable + 1 chapatti + salad</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">THURSDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 cucmber hungcurd sandwich + 1/2 tsp green chutney + 1
							orange</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup buttermilk</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup white chana/ fish curry + 1 chapatti + salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup low fat milk (no sugar)</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup cauliflower vegetable + 1 chapatti + salad</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">FRIDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 cup vegetable poha + 1 cup low fat curd</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup watermelon</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup chana dal + 1 chapatti + salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup sprouts salad</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup tinda vegetable + 1 chapatti + salad</td>
					</tr>

				</tbody>
				<br />
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">SATURDAY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Breakfast (8:00-8:30AM)</th>
						<td>1 cup low fat milk with oats + 3-4 strawberries</td>
					</tr>
					<tr>
						<th scope="row">Mid-Meal (11:00-11:30AM)</th>
						<td>1 cup coconut water</td>
					</tr>
					<tr>
						<th scope="row">Lunch (2:00-2:30PM)</th>
						<td>1 cup soybean curry + 1 chapatti + 1/2 cup low fat curd +
							salad</td>
					</tr>
					<tr>
						<th scope="row">Evening (4:00-4:30PM)</th>
						<td>1 cup fruit salad</td>
					</tr>
					<tr>
						<th scope="row">Dinner (8:00-8:30PM)</th>
						<td>1 cup ghia vegetable + 1 chaptti + salad</td>
					</tr>

				</tbody>
			</table>
		</div>
		<br />

		<div class="card bg-dark text-white">
			<img src="/static/bg5.jpg" class="card-img" alt="..." style="opacity: 0.6;">
			<div class="card-img-overlay">
				<h1 class="card-title">
					<a name="benefits"></a>Why does prevention matter?
				</h1>
				<p class="card-text">Preventing obesity plays an important role
					in good health. Obesity is associated with a long list of chronic
					health conditions, many of which become more difficult to treat
					over time. These conditions include:</p>
				<ul>
					<li>metabolic syndrome</li>
					<li>type 2 diabetes</li>
					<li>high blood pressure</li>
					<li>high triglycerides and low good cholesterol</li>
					<li>heart disease</li>
					<li>stroke</li>
					<li>sleep apnea</li>
					<li>gallbladder disease</li>
					<li>sexual health issues</li>
					<li>nonalcoholic fatty liver disease</li>
					<li>osteoarthritis</li>
					<li>mental health conditions</li>
				</ul>
				<p class="card-text">By focusing on obesity prevention and
					lifestyle changes, it may be possible to slow or prevent the
					development of these diseases.</p>
			</div>
		</div>
		<br />
		<h1 style="font-weight: bolder;">
			<a name="golden tips"></a>Follow these Golden Tips
		</h1>
		<div class="jumbotron">
			<div class="row">
				<div class="col-4">
					<div class="list-group" id="list-tab" role="tablist">
						<a class="list-group-item list-group-item-action active"
							id="list-1-list" data-toggle="list" href="#list-1" role="tab"
							aria-controls="1">Avoid Processed Foods</a> <a
							class="list-group-item list-group-item-action" id="list-2-list"
							data-toggle="list" href="#list-2" role="tab" aria-controls="2">
							Add Protein to Your Diet</a> <a
							class="list-group-item list-group-item-action" id="list-3-list"
							data-toggle="list" href="#list-3" role="tab" aria-controls="3">
							Stock Up on Healthy Foods and Snacks</a> <a
							class="list-group-item list-group-item-action" id="list-4-list"
							data-toggle="list" href="#list-4" role="tab" aria-controls="4">
							Drink Water</a> <a class="list-group-item list-group-item-action"
							id="list-5-list" data-toggle="list" href="#list-5" role="tab"
							aria-controls="5">Avoid Liquid Calories</a> <a
							class="list-group-item list-group-item-action" id="list-6-list"
							data-toggle="list" href="#list-6" role="tab" aria-controls="6">Strength
							Training</a> <a class="list-group-item list-group-item-action"
							id="list-7-list" data-toggle="list" href="#list-7" role="tab"
							aria-controls="7">Eliminate Stress</a> <a
							class="list-group-item list-group-item-action" id="list-8-list"
							data-toggle="list" href="#list-8" role="tab" aria-controls="8">Get
							Enough Sleep</a> <a class="list-group-item list-group-item-action"
							id="list-9-list" data-toggle="list" href="#list-9" role="tab"
							aria-controls="9">Fast Intermittently</a> <a
							class="list-group-item list-group-item-action" id="list-10-list"
							data-toggle="list" href="#list-10" role="tab" aria-controls="10">Keep
							Yourself Motivated</a> <a
							class="list-group-item list-group-item-action" id="list-11-list"
							data-toggle="list" href="#list-11" role="tab" aria-controls="11">Track
							Your Goal</a>
					</div>
				</div>
				<div class="col-8">
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="list-1" role="tabpanel"
							aria-labelledby="list-1-list">Processed foods are usually
							high in added sugars, added fats and calories. What's more,
							processed foods are engineered to make you eat as much as
							possible. They are much more likely to cause addictive-like
							eating than unprocessed foods</div>
						<div class="tab-pane fade" id="list-2" role="tabpanel"
							aria-labelledby="list-2-list">When it comes to weight loss,
							protein is the king of nutrients. A high-protein diet can also
							make you feel more full and reduce your appetite. In fact, some
							studies show that people eat over 400 fewer calories per day on a
							high-protein diet</div>
						<div class="tab-pane fade" id="list-3" role="tabpanel"
							aria-labelledby="list-3-list">Studies have shown that the
							food you keep at home greatly affects weight and eating behavior.
							By always having healthy food available, you reduce the chances
							of you or other family members eating unhealthy. There are also
							many healthy and natural snacks that are easy to prepare and take
							with you on the go.</div>
						<div class="tab-pane fade" id="list-4" role="tabpanel"
							aria-labelledby="list-4-list">There is actually truth to
							the claim that drinking water can help with weight loss. Drinking
							0.5 liters (17 oz) of water may increase the calories you burn by
							24 to 30% for an hour afterward. Drinking water before meals may
							also lead to reduced calorie intake, especially for middle-aged
							and older people. Water is particularly good for weight loss when
							it replaces other beverages that are high in calories and sugar.</div>
						<div class="tab-pane fade" id="list-5" role="tabpanel"
							aria-labelledby="list-5-list">Liquid calories come from
							beverages like sugary soft drinks, fruit juices, chocolate milk
							and energy drinks. These drinks are bad for health in several
							ways, including an increased risk of obesity. One study showed a
							drastic 60% increase in the risk of obesity among children, for
							each daily serving of a sugar-sweetened beverage.</div>
						<div class="tab-pane fade" id="list-6" role="tabpanel"
							aria-labelledby="list-6-list">Gaining weight does not mean
							you have to gain fat mass. Gain lean muscle mass. You will look
							toned and defined. To get there, you need to hit the gym at least
							2-4 times a week and lift some weights. If you have any medical
							conditions, talk to your doctor before you hit the gym.</div>
						<div class="tab-pane fade" id="list-7" role="tabpanel"
							aria-labelledby="list-7-list">Losing or gaining weight
							could be a stressful event. Stress often becomes a major hurdle
							when you try to achieve a goal. Therefore, it is important to
							reduce stress. Have a relaxing bath to reduce stress. Put on some
							good music and dance until you drop. Meditation, yoga, and
							breathing exercises also work well to reduce stress.</div>
						<div class="tab-pane fade" id="list-8" role="tabpanel"
							aria-labelledby="list-8-list">Sleep is an essential
							determinant of your health and well-being. A person needs a
							minimum of eight hours of sleep every night to stay fit and fine.
							A cross-sectional study on Chinese University students revealed
							that good quality sleep helped strengthen muscle mass as compared
							to poor quality sleep .</div>
						<div class="tab-pane fade" id="list-9" role="tabpanel"
							aria-labelledby="list-9-list">Intermittent fasting is an
							eating pattern that cycles between periods of fasting and eating.
							There are a few different ways to do intermittent fasting,
							including the 5:2 diet, the 16:8 method and the eat-stop-eat
							method. Generally, these methods make you eat fewer calories
							overall, without having to consciously restrict calories during
							the eating periods. This should lead to weight loss, as well as
							numerous other health benefits.</div>
						<div class="tab-pane fade" id="list-10" role="tabpanel"
							aria-labelledby="list-10-list">Weight gain is not rocket
							science; it requires a scientific approach and well disciplined
							lifestyle. Be patient and keep yourself motivated. Do not aim to
							gain more than four pounds a month. Looking for faster weight
							gain could be unhealthy and may only give you temporary results.</div>
						<div class="tab-pane fade" id="list-11" role="tabpanel"
							aria-labelledby="list-11-list">Tracking your goal increases
							your chances of hitting your target. Maintain a food journal to
							write your calorie goal and track the foods that you eat. Check
							your weight every week or 10 days. This not only motivates you
							but also helps you analyze your progress better. You can even
							track your exercise pattern and start measuring muscle gain.</div>
					</div>
				</div>
			</div>
		</div>
		<br />
		

	</c:if>


		<h1 style="font-weight: bolder;">
			<a name="coach contact"></a>Coach Contact
		</h1>
		<div class="jumbotron">
			<div class="card-deck">
				<div class="card">
					<a href="https://www.instagram.com/"><img src="/static/coach-2.jpg" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h2 class="card-title" style="font-weight: bold;">NATASHA</h2>
						<h4 class="card-text">Natasha is a great fitness coach and
							yoga instructor!</h4>
						<h5>Contact:+91-xxxxxxxxxx</h5>
						<h5>Email:yyyyy@gmail.com</h5>

					</div>

				</div>
				<div class="card">
					<a href="https://www.instagram.com/"><img src="/static/coach-1.png" class="card-img-top" alt="..."></a>
					<div class="card-body">
						<h2 class="card-title" style="font-weight: bold;">RUBY</h2>
						<h4 class="card-text">Ruby is a great fitness trainer and a
							boxer!</h4>
						<h5>Contact:+91-xxxxxxxxxx</h5>
						<h5>Email:yyyyy@gmail.com</h5>
					</div>

				</div>
				<div class="card">
					<a href="https://www.instagram.com/"><img src="/static/coach-3.jpg" class="card-img-top" alt="..."></a>
					<div class="card-body" style="font-weight: bold;">
						<h2 class="card-title">MIKE</h2>
						<h4 class="card-text">Mike is a Heavy Weight Champion and a
							humble gym instructor!</h4>
						<h5>Contact:+91-xxxxxxxxxx</h5>
						<h5>Email:yyyyy@gmail.com</h5>
					</div>

				</div>
			</div>
		</div>
		  <h1 style="font-weight: bolder;"><a name="dietician"></a>Dietician Contact</h1>
            <div class="jumbotron">
                <div class="card-deck">
                    <div class="card">
                        <a href="https://www.instagram.com/"><img src="/static/Diet1.jpg" class="card-img-top" alt="..."></a>
                      <div class="card-body">
                        <h2 class="card-title" style="font-weight: bold;">Dr.Hannah</h2>
                        <h4 class="card-text">Dr.Hannah is one of the most famous dietician in the world!</h4>
                        <h5>Contact:+91-xxxxxxxxxx</h5>
                        <h5>Email:yyyyy@gmail.com</h5>
                    </div>
                      
                    </div>

                    <div class="card">
                        <a href="https://www.instagram.com/"><img src="/static/diet2.jpg" class="card-img-top" alt="..."></a>
                      <div class="card-body">
                        <h2 class="card-title" style="font-weight: bold;">Dr.lee</h2>
                        <h4 class="card-text">Dr.Lee is known among the celebrities as the best dietician!</h4>
                        <h5>Contact:+91-xxxxxxxxxx</h5>
                        <h5>Email:yyyyy@gmail.com</h5>
                    </div>
                      
                    </div>
                </div>
            </div>
            <div id="footer" ><a name="contact"></a>
        <h4>We are happy to get feedback from you!</h4>
        <h4>Please reach us out!</h4>
        <h5>Contact:+91-xxxxxxxxxx</h5>
        <h5>Email: xyz@gmail.com</h5>
        
    </div>
	<!-- TO DO LIST -->


	<!--  <h1 style="font-weight: bolder;">
		<a name="todo">A Handy to-do-list!
	</h1>
	<div class="container">
		<div class="header">
			<div class="clear">
				<i class="fa fa-refresh"></i>
			</div>
			<div id="date"></div>
		</div>
		<div class="content">
			<ul id="list">

			</ul>
		</div>
		<div class="add-to-do">
			<i class="fa fa-plus-circle"></i> <input type="text" id="input"
				placeholder="Add a to-do">
		</div>
	</div>-->

</body>
<script type="text/javascript">
    var quotes = [
        '"The last three or four reps is what makes the muscle grow. This area of pain divides a champion from someone who is not a champion." ',
        '"Success usually comes to those who are too busy to be looking for it."',
        ' "All progress takes place outside the comfort zone."',
        '"If you think lifting is dangerous, try being weak. Being weak is dangerous."',
        '"The only place where success comes before work is in the dictionary."',
        '"The successful warrior is the average man, with laser-like focus."',
        '"You must expect great things of yourself before you can do them."',
        '"Things work out best for those who make the best of how things work out."',
        '"What hurts today makes you stronger tomorrow."'
    ];
    function newQuote(){
    var randomNumber = Math.floor(Math.random() *(quotes.length));
    document.getElementById('quoteDisplay').innerHTML = quotes[randomNumber];
    }
    </script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</html>