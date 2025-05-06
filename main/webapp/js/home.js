document.addEventListener("DOMContentLoaded", function() {
	const likeBtns = document.querySelectorAll(".home-like-btn");

	likeBtns.forEach(btn => {
		btn.addEventListener("click", () => {
			const icon = btn.querySelector("i");
			icon.classList.toggle("fa-regular");
			icon.classList.toggle("fa-solid");
			icon.classList.toggle("liked");
		});
	});
});
