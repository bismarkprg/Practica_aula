import React from 'react';
import PropTypes from 'prop-types';
import '../styles/App.css'; // Assuming you will create a CSS file for styling

const BalanceBox = ({ totalBalance, onTogglePassword, isPasswordVisible }) => {
    return (
        <div className="main_balance">
            <h3 id="text_balance">Balance total:</h3>
            <img 
                id="infotext" 
                src="assets/images/icon/info2.png" 
                alt="Información sobre el balance" 
                className="btn-info2" 
                title="Información sobre el balance con la suma total de los saldos del usuario en todas las criptomonedas." 
            />
            <img 
                id="usaicon" 
                src="../assets/images/icon/usa.png" 
                alt="Icono de USA" 
                className="btn-user" 
            />
            <h2 id="balance-simbol">$</h2>
            <span id="tbalance" className="tbalance">{totalBalance}</span>
            <button type="button" id="toggle-password" onClick={onTogglePassword}>
                <img 
                    id="eye_icon" 
                    src={isPasswordVisible ? "assets/images/icon/eye.png" : "assets/images/icon/eye-off.png"} 
                    alt="Toggle password visibility" 
                    className="btn-eye" 
                />
            </button>
        </div>
    );
};

BalanceBox.propTypes = {
    totalBalance: PropTypes.string.isRequired,
    onTogglePassword: PropTypes.func.isRequired,
    isPasswordVisible: PropTypes.bool.isRequired,
};

export default BalanceBox;