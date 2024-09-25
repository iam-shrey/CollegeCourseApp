import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import CollegeList from './Components/CollegeList';
import CollegeCourseList from './Components/CollegeCourseList';

function App() {
  return (
    <Router>
      <div>
        <div className="container mt-4">
          <Routes>
            <Route path="/colleges" element={<CollegeList />} />
            <Route path="/colleges/courses" element={<CollegeCourseList />} />
          </Routes>
        </div>
      </div>
    </Router>
  );
}

export default App;
