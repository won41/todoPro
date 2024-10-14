package org.pgm.todopro.service;

import org.pgm.todopro.dto.TodoDTO;

import java.util.List;

public interface TodoService {
    void register(TodoDTO todoDTO);
    List<TodoDTO> getAll();
    TodoDTO getOne(int tno);
    void remove(Long tno);
    void modify(TodoDTO todoDTO);
}
