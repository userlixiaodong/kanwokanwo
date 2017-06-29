/**
 * Created by szj on 2016/4/12.
 */

    //TODO 成绩添加

$(function () {
    _.each(JSON.parse(recordsJson), function (record, index) {
        $("#scores").html("<div>" + record.examType + ": "  + "<strong>" +  parseFloat(record.total).toFixed(0) + "</strong>" + "</div>");
        $(".scrollbar").append(score_template());
        updateOptions();
        $($(".add-score-content select")[index]).val(record.examType);
        if (record.examType == "TOEFL" || record.examType == "IELTS") {
            $($(".score-list")[index]).html(score_item_template1());
        }
        if (record.examType == "GRE" || record.examType == "GMAT") {
            $($(".score-list")[index]).html(score_item_template2());
        }
        if (record.examType == "SAT") {
            $($(".score-list")[index]).html(score_item_template3());
        }
        $($(".score-list")[index]).find("input[name=total]").val(parseFloat(record.total).toFixed(0));
        _.each(record.examItemList, function (item, index2) {
            $($(".score-list")[index]).find("input[name=" + item.title + "]").val(parseFloat(item.score).toFixed(0));
        });
    });

    scoreEventBind();

    if ($(".scrollbar .add-score-content").length <= 0) {
        $(".add-score .add-score-save").hide();
    }

    $(".add-score .add-score-save").bind("click", function () {
        var scores = {};
        var flag = true;
        $(".scrollbar .add-score-content").each(function () {
            var score = [];
            $(this).find(".score-list :input").each(function () {
                var item = {};
                item[$(this).attr("name")] = $(this).val();
                if (isNaN($(this).val())) {
                    alert('score must is number!');
                    flag = false;
                    return;
                }
                score.push(item);
            });
            if (!($(this).find("select").val() in scores)) {
                scores[$(this).find("select").val()] = score;
            }
        });
        if (!flag) {
            return;
        }
        $.ajax({
            type: "POST",
            url: '/updateScores',
            data: {scores: JSON.stringify(scores)},
            dataType: 'json',
            success: function (data) {
                if (data.status == 1) {
                    $("#scores").html("");
                    for (key in scores) {
                        if (scores[key][0]) {
                            $("#scores").append("<div style='float:left;margin-right:2%;'>" + key + ": " + "<strong>" + parseFloat(scores[key][0]['total']).toFixed(0) + "</strong>" + "</div>");
                        }
                    }
                    if (jQuery.isEmptyObject(scores)) {
                        $("#scores").html("Score");
                        App.vent.trigger("badge:remove", "examRecord");
                    } else {
                        App.vent.trigger("badge:add", "examRecord");
                    }
                    $("#modal-score .md-close").trigger("click");
                } else {
                    alert("edit fail");
                }

            }
        });

        return false;
    });
});
score_template = _.template($('#score_template').html());
score_item_template1 = _.template($('#score_item_template1').html());
score_item_template2 = _.template($('#score_item_template2').html());
score_item_template3 = _.template($('#score_item_template3').html());

//添加成绩
allExams = {"TOEFL": 0, "SAT": 0, "GRE": 0, "GMAT": 0, "IELTS": 0};

function addScore() {

    var scoreCount = $(".scrollbar .add-score-content").length;
    $(".scrollbar").append(score_template());
    addOptionUtil($(".add-score-content select:last"), allExams);

    if (scoreCount == 0) {
        $(".add-score .add-score-save").show();
    }
    //判断是否已经有该考试的成绩记录
    $(".add-score-content select").each(function () {
        if ($(this).val() != "") {
            $(".add-score-content select").find("option[value='" + $(this).val() + "']").not("option:selected").remove();
        }
    });
    scoreEventBind();

}

function scoreEventBind() {
    $(".add-score-content select").bind("change", function () {
        if ($(this).val() == "TOEFL" || $(this).val() == "IELTS") {
            $(this).closest(".add-score-content").children(".score-list").html(score_item_template1());
        } else if ($(this).val() == "GRE" || $(this).val() == "GMAT") {
            $(this).closest(".add-score-content").children(".score-list").html(score_item_template2());
        } else if ($(this).val() == "SAT") {
            $(this).closest(".add-score-content").children(".score-list").html(score_item_template3());
        }
        updateOptions();

    });
    $(".add-score-sort-delete").bind("click", function () {
        $(this).closest(".add-score-content").remove();
        updateOptions();
    });
}
function addOptionUtil(object, array) {
    for (var key in array) {
        if (array[key] == 0) {
            $(new Option(key, key)).appendTo(object);
        }
    }
}

function updateOptions() {
    //初始化成都没选择
    allExams = {"TOEFL": 0, "SAT": 0, "GRE": 0, "GMAT": 0, "IELTS": 0};
    //记录已经选择的值
    $(".add-score-content select").each(function () {
        if ($(this).val() != "")
            allExams[$(this).val()] = 1;
    });
    //根据已经选择的值，更新options
    $(".add-score-content select").each(function () {
        var selectedKey = $(this).val();
        $(this).find("option").remove();
        $(new Option(selectedKey, selectedKey)).appendTo($(this));
        addOptionUtil($(this), allExams);
    });
}
