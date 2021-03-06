/*Created by Ha Xuan Huy, Vu Viet Hoang, Nguyen Dang Khoa
* This script is the implementation of questionnaire page
* */
$(function () {
    $("input").empty();
	//load class code first then append to the select bar
        getData();
	//select class and lecturer
    $(".sel-class").change(function (e) {
         const newVal=getVal();
         addInput(newVal)
	 $(".sel-lec .starter").siblings().remove()
         changLec(newVal)
    });
	//submit 
    $('.submit-btn').click(function(event) {
        event.preventDefault();
        console.log(gatherQuestionAnswer());
        var isNotValid = answerValidator();

        if (isNotValid) {
            alert(isNotValid);
            return;
        }

        submitQuestionnaire();
     });
});
// return the error message string when submitting the form
function answerValidator() {
    const questions = $(".question");
    var errorMessage = "";

    if($(".sel-class option:selected").val() == "starter"){
        errorMessage += "Please select the class option \n";
    }

    if($(".sel-lec option:selected").val() == "starter"){
        errorMessage += "Please select the lecturer option \n";
    }

    if(!$('input[name=attend]:checked')){
        errorMessage += "Please fill in your attendance \n";
    }

    if(!$('input[name=gender]:checked')){
        errorMessage += "Please fill in your gender \n";
    }

    for(let i = 1 ; i <= questions.length; i++) {
        if ($(`input[name=question${i}]:checked`).length == 0) {
            errorMessage += `Please fill in the question ${i} \n`;
        }
    }

    return errorMessage;
}
// checking if all the question is checked by the user
function gatherQuestionAnswer() {
    const questions = $('.question');
    var questionList = [];

    //Attendance question
    questionList.push({
        "question": "attendance",
        "answer": String($("input[name=attendance]:checked").val())
    });

    //Gender question
    questionList.push({
        "question": "gender",
        "answer": String($("input[name=gender]:checked").val())
    });

    //Questions
    for(let i = 1; i <= questions.length; i++){
        questionList.push({
            "question": String(i),
            "answer": $(`input[name=question${i}]:checked`).val()
        })
    }

    //Additional comment session
    questionList.push({
        "question": "18",
        "answer": String($("textarea[name=question18]").val())
    })

    return questionList;
}
// sending back the questionaire to the BACKEND
function submitQuestionnaire() {
    var requestBody = {
        lcode: String($(".sel-class option:selected").val()),
        ccode: String($(".sel-lec option:selected").val()),
        question_list: gatherQuestionAnswer()
    };
    console.log(requestBody);
    $.ajax({
        type: "POST",
        url: "http://localhost:8080/survey/api/questionnaire",
        contentType: "application/json",
        data: JSON.stringify(requestBody),
        success: function(data) {
            alert(data.message.string);
        },
        error: function(data) {
            console.log(data);
        }
    })
    return requestBody;
}
// append all the class code that was inside the api into the select bar
function getData(){
    $.ajax({
		type: 'GET',
		url: 'http://localhost:8080/survey/api/general',
		success: function(data) {
			//filter out the repeated class code
            const ccodeArr=new Set(data.map(val=>{
                return val.Ccode
            }))
            const uniqueCcode=[...ccodeArr]
            //render class code
			uniqueCcode.map(val=>{
            $(`
                <option value=${val}>${val}</option>
            `).appendTo($(".sel-class"));
            })
		},
        error:function () {
            alert("Error loading order");
        }
	});
}
//this function return the class option that user selected 
function getVal(){
	const selectedVal=$( ".sel-class option:selected" ).text();
    return selectedVal;
}
// after selecting class from the getData function then this function is called 
//to find where is class in the object array
function addInput(input){
const api='http://localhost:8080/survey/api/general';
    $.get(api,function(data){
        $(input).empty();
        const obj=data
		const newData=obj.filter(val=>{
            return val.Ccode.includes(input)
        })
            $(".acad-year").val(newData[0].AYcode);
            $(".semester").val(newData[0].Scode);
            $(".faculty").val(newData[0].Fcode);
            $(".module").val(newData[0].Mcode);
            $(".program").val(newData[0].Pcode);
        //});

    });
}
// this function return the lecturer code
function changLec(input){
    const api='http://localhost:8080/survey/api/general';
        $.get(api,function(data){
            $(input).empty();
            const obj=data
             const newData=obj.filter(val=>{
                return val.Ccode.includes(input)
            })
            const newObj=newData.filter(vals=>{
                return vals.Pname
            })
            //render lecturer
            newData.map(value=>{
                $(`
                <option value=${value.Lcode}>${value.Lcode}</option>
            `).appendTo(".sel-lec");
            })
        });
    }
