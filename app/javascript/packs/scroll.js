var profilePicture1 = (document.querySelector(".profile-picture1").src =
	"https://cdn-2.tstatic.net/jogja/foto/bank/images/iu-segera-rilis-album-baru-di-tahun-2021-hingga-bagikan-pengalaman-berkarir-selama-10-tahun.jpg");

var student1 = {
	nickName: "IU",
	fullName: "Lee Ji-Eun",
	class: "XI MIPA 3"
};

var profilePicture2 = (document.querySelector(".profile-picture2").src =
	"http://pm1.narvii.com/7499/b7cb95f2c542efacaf9ceb86c5affb30940c19b9r1-564-752v2_uhq.jpg");

var student2 = {
	nickName: "Sana",
	fullName: "Sana Minatozaki",
	class: "XI MIPA 3"
};

var profilePicture3 = (document.querySelector(".profile-picture3").src =
	"http://kpopmembersbio.com/wp-content/uploads/2021/01/Jihan.jpg");

var student3 = {
	nickName: "Jihan",
	fullName: "Han Ji Hyo",
	class: "XI MIPA 3"
};

document.querySelector(".nickname1").innerHTML = student1.nickName;
document.querySelector(".fullname1").innerHTML = student1.fullName;
document.querySelector(".class1").innerHTML = student1.class;

document.querySelector(".nickname2").innerHTML = student2.nickName;
document.querySelector(".fullname2").innerHTML = student2.fullName;
document.querySelector(".class2").innerHTML = student2.class;

document.querySelector(".nickname3").innerHTML = student3.nickName;
document.querySelector(".fullname3").innerHTML = student3.fullName;
document.querySelector(".class3").innerHTML = student3.class;
