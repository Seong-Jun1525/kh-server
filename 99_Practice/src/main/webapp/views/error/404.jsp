<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERROR - 404</title>

    <style>
        /* 결과 화면으로 표시될 수 있도록 스타일 추가 */
        body {
            margin: 0 auto;
        }

        .wrap { 
            height: 100vh; /* vh : 뷰포트 기준 높이 비율 단위 */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        #icon-emark {
            border-radius: 50px;

            padding: 10px;
            width: 30px;
            height: 30px;

            text-align: center;
            line-height: 30px;

            font-weight: 900;
            font-size: 25px;
            color: red;
            border: 3px solid red;
            box-shadow: 0px 0px 16px 5px red;
            text-shadow: 0 0 5px;
        }

        #btn-back {
            width: 200px;

            padding: 10px;
            margin: 10px;

            border-radius: 15px;
            background-color: black;
            color: white;
            border: none;
            cursor: pointer;
        }

        #btn-back:hover {
            background-color: #333333;
        }
    </style>
</head>
<body>
    <div class="wrap">
        <span id="icon-emark">!</span>
        <h3>죄송합니다. 페이지를 찾을 수 없습니다.</h3>
        <p>잘못된 접근입니다. 다시 시도해주세요.</p>
        <button id="btn-back" onclick="history.back();">이전으로</button>
        <button id="btn-back" onclick="location.href='<%= request.getContextPath() %>'">이전으로</button>
    </div>
</body>
</html>