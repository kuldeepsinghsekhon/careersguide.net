package net.careersguide.repository;

import net.careersguide.entity.Test;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TestRepository extends JpaRepository<Test, Integer> {

}
