package it.univaq.mwt.j2ee.library.business.impl;

import javax.sql.DataSource;

import it.univaq.mwt.j2ee.library.business.LibraryBusinessFactory;
import it.univaq.mwt.j2ee.library.business.SecurityService;
import it.univaq.mwt.j2ee.library.business.TitleService;

public class JDBCLibraryBusinessFactory extends LibraryBusinessFactory {
	
	private DataSource dataSource;
	
	public JDBCLibraryBusinessFactory(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}


	@Override
	public TitleService getTitleService() {
		return new JDBCTitleService(dataSource);
	}


	@Override
	public SecurityService getSecurityService() {
		return new JDBCSecurityService(dataSource);
	}
	
}
