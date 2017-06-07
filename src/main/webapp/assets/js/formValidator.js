$(document).ready(function() {
    $('#modifyPass,#accountForm,#addPerson,#loginForm,#empForm')
        .bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                'employee.empNo': {
                    validators: {
                        notEmpty: {
                            message: '员工号不能为空'
                        },
                        stringLength: {
                            min: 5,
                            max: 10,
                            message: '员工号长度必须为5~10个字符'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9\.]+$/,
                            message: '员工号只能由字母和数字和组成'
                        }
                    }                    
                },
            	dillNum: {
                    validators: {
                        notEmpty: {
                            message: '请填写人数'
                        },
                        regexp: {
                        	regexp: /[^\d]/g,
                        	message: '请填写数字'
                    	}
                    }
                },
                dillCash: {
                	validators: {
                        notEmpty: {
                            message: '请填写金额'
                        },
                        regexp: {
                        	regexp: /^[0-9]+$/,
                        	message: '请填写金额'
                    	}
                    }                       
                    
                },
                'employee.empPassword': {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },                   
                    	stringLength: {
                            min: 3,
                            max: 16,
                            message: '密码长度必须为3~16个字符'
                        }
                    }
                },
                checkPassword: {
                    validators: {
                        notEmpty: {
                            message: '确认密码不能为空'
                        },
                        identical: {
                        	field: 'employee.empPassword',
                        	message: '两次输入的密码不一致'
                   		},
                    	stringLength: {
                            min: 3,
                            max: 16,
                            message: '密码长度必须为3~16个字符'
                        }
                    }
                },
                newPassword: {
                    validators: {
                        notEmpty: {
                            message: '新密码不能为空'
                        },
                    	stringLength: {
                            min: 3,
                            max: 16,
                            message: '密码长度必须为3~16个字符'
                        }
                    }
                },
                confirmPassword: {
                    validators: {
                        notEmpty: {
                            message: '确认密码不能为空'
                        },
                        identical: {
                        	field: 'newPassword',
                        	message: '两次输入的密码不一致'
                   		},
                    	stringLength: {
                            min: 3,
                            max: 16,
                            message: '密码长度必须为3~16个字符'
                        }
                    }
                },
                
                'category.id':{
                	validators: {
                        notEmpty: {
                            message: '不能为空'
                        },                   
                    	stringLength: {
                            min: 3,
                            max: 8,
                            message: '长度必须为3~8个字符'
                        }
                    }
                },
                'board.name':{
                	validators: {
                        notEmpty: {
                            message: '不能为空'
                        },                   
                    	stringLength: {
                            min: 3,
                            max: 8,
                            message: '长度必须为3~8个字符'
                        }
                    }
                },
                'picture':{
                	validators: {
                        notEmpty: {
                            message: '请上传图标'
                        }                
                    }
                },
                'board.description':{
                	validators: {
                        notEmpty: {
                            message: '请填写描述'
                        },                   
                    	stringLength: {
                            min: 10,
                            max: 40,
                            message: '长度必须为10~40个字符'
                        }
                    }
                }
            }
        });
});