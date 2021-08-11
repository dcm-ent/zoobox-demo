const btnSave = document.querySelector("#save-btn");
const titleEl = document.getElementById("title");

var quill = new Quill("#editor-container", {
  modules: {
    formula: true,
    syntax: true,
    toolbar: "#toolbar-container",
    imageResize: {
      displaySize: true,
    },
  },
  placeholder: "본문 작성...",
  theme: "snow",
});



function getData() {
/*  const articleId = articleIdEl.value;
  const boardId = boardListEl.value;*/
  const title = titleEl.value.trim();
  const content = quill.root.innerHTML;
  return {
  /*  articleId,
    boardId,*/
    title,
    content,
  };
}


async function save(e){
	var data = getData();
	var a = Object.assign(data, { status: 1 });
	
	const resp = await axios.post("/zoobox/article/insertArticle.do", data);
	const articleId = resp.data;
	
	alert(`게시글 번호는 ${articleId} 입니다`);
	
	//location.href = `/zoobox/article/view.do?articleId=${articleId}`;
	
} 


btnSave.addEventListener("click", save);