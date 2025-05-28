import React from 'react';
import logo from '../assets/images/logo.png';
import profileIcon from '../assets/images/icon/profile.png';
import configIcon from '../assets/images/icon/gear2.png';

const Menubar = () => {
    return (
        <div className="menubar">
            <div className="actions">
                <img src={logo} alt="Logo" className="menubar-logo" />
                <div className="spacer"></div>
                <a className="action-btn">username <img src={profileIcon} alt="Profile" className="btn-user" /></a>
                <a href="#" className="action-btn"><img src={configIcon} alt="Configuration" className="btn-configuration" /></a>
            </div>
        </div>
    );
};

export default Menubar;