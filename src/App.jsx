import React from 'react';
import styles from './App.module.css';

const App = () => {
    return (
        <div className={styles.main}>
            <div className={styles.header}>
                <div className={styles.logo}>
                    <img src="/images/output-onlinepngtools.png" alt="Logo" />
                </div>
                <div className={styles.form}>
                    <input className={styles.findinput} aria-label="Search" placeholder="Search..." />
                    <button className={styles.find}>Find</button>
                    <div className={styles.buttonGroup}>
                        <button className={styles.appBarButtons}> <i className={`fas fa-th-list ${styles.icon}`}></i>Athlete</button>
                        <button className={styles.appBarButtons}> <i className={`fas fa-th-list ${styles.icon}`}></i>Trainer</button>
                        <button className={styles.appBarButtons}> <i className={`fas fa-th-list ${styles.icon}`}></i>Bundle</button>
                        <button className={styles.appBarButtons}> <i className={`fas fa-th-list ${styles.icon}`}></i>Training Type</button>
                    </div>
                </div>
            </div>
            <div className={styles.menu}>
                <div className={styles.menuButtons}>
                    <a href="#"><div className={styles.iconmenu}><img className={styles.imgmenu} src="/images/output-onlinepngtools%20(2).png" alt="Athlete" /></div><span className={styles.textmenu}>Athlete</span></a>
                    <a href="#"><div className={styles.iconmenu}><img className={styles.imgmenu} src="/images/output-onlinepngtools%20(3).png" alt="Bundle" /></div><span className={styles.textmenu}>Bundle</span></a>
                    <a href="#"><div className={styles.iconmenu}><img className={styles.imgmenu} src="/images/output-onlinepngtool.png" alt="Gym" /></div><span className={styles.textmenu}>Gym</span></a>
                    <a href="#"><div className={styles.iconmenu}><img className={styles.imgmenu} src="/images/output-onlinepngtools%20(1).png" alt="Schedule" /></div><span className={styles.textmenu}>Schedule</span></a>
                    <a href="#"><div className={styles.iconmenu}></div><span className={styles.textmenu}>Training</span></a>
                </div>
            </div>
        </div>
    );
};

export default App;
