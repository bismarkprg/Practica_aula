import React from 'react';

const ActionButton = ({ icon, label, onClick }) => {
    return (
        <div className="action" onClick={onClick}>
            <img src={icon} alt={label} className="icons2" />
            <p className="action_text">{label}</p>
        </div>
    );
};

export default ActionButton;