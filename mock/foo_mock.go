// Code generated by MockGen. DO NOT EDIT.
// Source: foo.go

// Package main is a generated GoMock package.
package main

import (
	gomock "github.com/golang/mock/gomock"
	reflect "reflect"
)

// MockFoo is a mock of Foo interface
type MockFoo struct {
	ctrl     *gomock.Controller
	recorder *MockFooMockRecorder
}

// MockFooMockRecorder is the mock recorder for MockFoo
type MockFooMockRecorder struct {
	mock *MockFoo
}

// NewMockFoo creates a new mock instance
func NewMockFoo(ctrl *gomock.Controller) *MockFoo {
	mock := &MockFoo{ctrl: ctrl}
	mock.recorder = &MockFooMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use
func (m *MockFoo) EXPECT() *MockFooMockRecorder {
	return m.recorder
}

// Bar mocks base method
func (m *MockFoo) Bar(arg0 string) string {
	ret := m.ctrl.Call(m, "Bar", arg0)
	ret0, _ := ret[0].(string)
	return ret0
}

// Bar indicates an expected call of Bar
func (mr *MockFooMockRecorder) Bar(arg0 interface{}) *gomock.Call {
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Bar", reflect.TypeOf((*MockFoo)(nil).Bar), arg0)
}