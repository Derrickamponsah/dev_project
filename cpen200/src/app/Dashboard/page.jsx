import styles from './dash.module.css';
function App() {
  const courses = [
    { id: 1, name: 'Computer System Design' },
    { id: 2, name: 'Data Structure and Algorithm' },
    { id: 3, name: 'Linear Circuit' },
    { id: 4, name: 'Software Engineering' },
    { id: 5, name: 'Data Communication' },
    { id: 6, name: 'Differential Equation' },
    { id: 7, name: 'Academic Writing' },
  ];

  return (
    <div className={styles.screen}>
      <div className={styles.screen1}>
        <h1 className={styles.screen2}>Dashboard</h1>
        <p className={styles.screen3}>Welcome back</p>
        <p className={styles.screen3}>Your Name</p>
        <img
          className={styles.image}
          src="https://via.placeholder.com/150"
          alt="Profile Picture"
        />
        <ul className="space-y-2">
          <li className={styles.screen3}>My Courses:</li>
          {courses.map(course => (
            <li key={course.id} className={styles.courses}>
              {course.name}
            </li>
          ))}
        </ul>
      </div>
      <div className="flex flex-col flex-grow p-4">
        {/* Your other dashboard content goes here */}
  
      </div>
    </div>
  );
}

export default App;
