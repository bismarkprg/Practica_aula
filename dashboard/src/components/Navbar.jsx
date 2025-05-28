import React from 'react';
import '../styles/App.css'; // Assuming you will create a CSS file for styling
const Navbar = ({ activeTab, onTabChange }) => {
    const tabs = [
        { id: 'inicio', label: 'Inicio', icon: '../assets/images/icon/home.png' },
        { id: 'cambiar', label: 'Intercambio rápido', icon: '../assets/images/icon/change_tether.png' },
        { id: 'intercambio', label: 'Intercambio P2P', icon: '../assets/images/icon/change.png' },
        { id: 'earn', label: 'Gana', icon: '../assets/images/icon/earn.png' },
        { id: 'actividad', label: 'Actividad', icon: '../assets/images/icon/file.png' },
        { id: 'tutoriales', label: 'Tutoriales', icon: '../assets/images/icon/info.png' },
    ];

    return (
        <div className="navbar">
            <div className="tabs">
                {tabs.map(tab => (
                    <div
                        key={tab.id}
                        className={`tab ${activeTab === tab.id ? 'active' : ''}`}
                        onClick={() => onTabChange(tab.id)}
                    >
                        <img src={tab.icon} alt={tab.label} className="icons" />
                        {tab.label}
                    </div>
                ))}
            </div>
        </div>
    );
};

export default Navbar;