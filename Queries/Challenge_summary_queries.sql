-- Total eligible for retirement by title
SELECT COUNT (emp_no)
FROM unique_titles;

-- Number of employees mentorship program eligible by their most recent job title
SELECT COUNT (emp_no),
	title
INTO mentorship_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT (emp_no) DESC;
