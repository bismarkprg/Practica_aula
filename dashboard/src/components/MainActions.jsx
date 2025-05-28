import React from 'react';
import ActionButton from './ActionButton';
import { ReactComponent as DepositIcon } from '../assets/images/icon/credit_card_2.svg';
import { ReactComponent as SendIcon } from '../assets/images/icon/upload.svg';
import { ReactComponent as ReceiveIcon } from '../assets/images/icon/receive_money.svg';

const MainActions = () => {
    return (
        <div className="main_actions">
            <ActionButton icon={<DepositIcon />} text="Recargar" />
            <ActionButton icon={<SendIcon />} text="Enviar" />
            <ActionButton icon={<ReceiveIcon />} text="Recibir" />
        </div>
    );
};

export default MainActions;