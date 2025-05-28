import React from 'react';

const TabContent = ({ activeTab }) => {
    const renderContent = () => {
        switch (activeTab) {
            case 'inicio':
                return (
                    <div>
                        <h1>Balance total:</h1>
                        <p>Información sobre el balance con la suma total de los saldos del usuario en todas las criptomonedas.</p>
                    </div>
                );
            case 'cambiar':
                return (
                    <div>
                        <h1>GUÍA de Uso</h1>
                        <p>Mecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor. Donec posuere vulputate arcu.</p>
                    </div>
                );
            case 'intercambio':
                return (
                    <div>
                        <h1>Intercambio P2P</h1>
                        <p>Contenido para intercambio P2P.</p>
                    </div>
                );
            case 'earn':
                return (
                    <div>
                        <h1>GUÍA de Uso</h1>
                        <p>Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor. Donec posuere vulputate arcu.</p>
                    </div>
                );
            case 'actividad':
                return (
                    <div>
                        <h1>Últimas Publicaciones en el BLOG</h1>
                        <p>Fusce ac felis sit amet ligula pharetra condimentum. Maecenas vestibulum mollis diam. Pellentesque ut neque.</p>
                    </div>
                );
            case 'tutoriales':
                return (
                    <div>
                        <h1>GUÍA de Uso</h1>
                        <p>Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor. Donec posuere vulputate arcu.</p>
                    </div>
                );
            default:
                return <div>Select a tab to view content.</div>;
        }
    };

    return (
        <div className="content">
            {renderContent()}
        </div>
    );
};

export default TabContent;