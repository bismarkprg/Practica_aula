import React, { useState } from 'react';
import Menubar from './components/Menubar';
import Navbar from './components/Navbar';
import TabContent from './components/TabContent';
import './styles/App.css';

const App = () => {
    const [activeTab, setActiveTab] = useState('inicio');

    const handleTabChange = (tabId) => {
        setActiveTab(tabId);
    };

    return (
        <div className="maincontainer">
            <Menubar />
            <Navbar activeTab={activeTab} onTabChange={handleTabChange} />
            <TabContent activeTab={activeTab} />
        </div>
    );
};

export default App;