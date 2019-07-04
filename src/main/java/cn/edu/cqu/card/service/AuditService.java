package cn.edu.cqu.card.service;

import java.util.List;

import cn.edu.cqu.card.model.NotAuditedShop;

public interface AuditService {

	List<NotAuditedShop> notAuditedShops();

	int audit(int auditedId, String result);
}
