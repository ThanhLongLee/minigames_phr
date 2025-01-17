
--INSERT [dbo].[Users] ([Id], [UserName], [Email], [EmailConfirmed], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [CreatedDate], [ModifyDate])
-- VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', N'admin@gomdori.io', N'admin@gomdori.io', 0, N'AA3f4cUHJIrenJAzNNc2QdBOjMuTIzrFA+Dkj7oNR+lJYvhcKUlh2Je0iiKsbDFuBA==', NULL, 0, N'2b9da9d0-8588-497c-9b6e-e3993a3adeb1', 0, CAST(N'1753-01-01T00:00:00.000' AS DateTime), 1, 0, GETDATE(), GETDATE())
--GO


------SET IDENTITY_INSERT [UserProfiles] ON
--INSERT [dbo].[UserProfiles] ([UserId], [IdentityCode], [FullName], UserType, UserRole, Note, [Status])
-- VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', 1, N'Admin', 0, 200, N'', 0)
--GO
------SET IDENTITY_INSERT [UserProfiles] OFF;


------- Quản lý nhân viên

--INSERT ParentRole([Id], [Name], [Description]) VALUES ('bcc79673-1059-4a42-8fbb-b4617cb16491', N'Quản lý nhân viên', N'')
--INSERT [Roles] ([Id], [Name], [Description], ParentId) VALUES ('13ab9a13-bb14-423a-b641-328b01fa200f', N'employee-view', N'Xem', 'bcc79673-1059-4a42-8fbb-b4617cb16491')
--INSERT [Roles] ([Id], [Name], [Description], ParentId) VALUES ('fe5e28c4-e2c8-405c-92b8-bc7492b95a4c', N'employee-add', N'Thêm', 'bcc79673-1059-4a42-8fbb-b4617cb16491')
--INSERT [Roles] ([Id], [Name], [Description], ParentId) VALUES ('2b5e6d91-f33e-4d95-a6d4-b5f79d993977', N'employee-edit', N'Sửa', 'bcc79673-1059-4a42-8fbb-b4617cb16491')
--INSERT [Roles] ([Id], [Name], [Description], ParentId) VALUES ('1fc31a39-4f8a-43f9-afba-7e275bf260a2', N'employee-delete', N'Xoá', 'bcc79673-1059-4a42-8fbb-b4617cb16491')
--INSERT [Roles] ([Id], [Name], [Description], ParentId) VALUES ('a3e0ab19-bad8-48f1-9f01-4a02c138351e', N'employee-roles', N'Phân quyền', 'bcc79673-1059-4a42-8fbb-b4617cb16491')



--INSERT [UserRoles] ([UserId], [RoleId]) VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', '13ab9a13-bb14-423a-b641-328b01fa200f')
--INSERT [UserRoles] ([UserId], [RoleId]) VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', 'fe5e28c4-e2c8-405c-92b8-bc7492b95a4c')
--INSERT [UserRoles] ([UserId], [RoleId]) VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', '2b5e6d91-f33e-4d95-a6d4-b5f79d993977')
--INSERT [UserRoles] ([UserId], [RoleId]) VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', 'a3e0ab19-bad8-48f1-9f01-4a02c138351e')

------//....

--------- Quản lý quyền truy cập

------INSERT ParentRole([Id], [Name], [Description]) VALUES ('70bfe493-775d-4e1b-93de-887627e572b3', N'Quản lý quyền truy cập', N'')
------INSERT [Roles] ([Id], [Name], [Description], ParentId) VALUES ('48eb1da1-b0a9-46c0-9b14-3b9c812b0c01', N'roles-view', N'Xem', '70bfe493-775d-4e1b-93de-887627e572b3')
------INSERT [Roles] ([Id], [Name], [Description], ParentId) VALUES ('bfe83d5e-8971-4307-b530-bc883c07f68a', N'roles-add', N'Thêm', '70bfe493-775d-4e1b-93de-887627e572b3')
------INSERT [Roles] ([Id], [Name], [Description], ParentId) VALUES ('a3337124-fb64-475a-ac43-b68a8ffa9089', N'roles-edit', N'Sửa', '70bfe493-775d-4e1b-93de-887627e572b3')


------INSERT [UserRoles] ([UserId], [RoleId]) VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', '48eb1da1-b0a9-46c0-9b14-3b9c812b0c01')
------INSERT [UserRoles] ([UserId], [RoleId]) VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', 'bfe83d5e-8971-4307-b530-bc883c07f68a')
------INSERT [UserRoles] ([UserId], [RoleId]) VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', 'a3337124-fb64-475a-ac43-b68a8ffa9089')

--------//....


----- Quản lý nhóm quyền truy cập
--INSERT ParentRole([Id], [Name], [Description]) VALUES ('8d646c27-afbb-433c-af41-a7b046b8f9b3', N'Nhóm quyền truy cập', N'')
--INSERT [Roles] ([Id], [Name], [Description], ParentId) VALUES ('3df4e6f3-22c5-42b7-be15-1f294f71566a', N'group-roles-edit', N'Tất cả thao tác', '8d646c27-afbb-433c-af41-a7b046b8f9b3')
--INSERT [UserRoles] ([UserId], [RoleId]) VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', '3df4e6f3-22c5-42b7-be15-1f294f71566a')

--GO




--- Edition
INSERT ParentRole([Id], [Name], [Description]) VALUES ('1379f1f6-acf1-4825-b6fa-7d48b111c237', N'Edition', N'')
INSERT [Roles] ([Id], [Name], [Description], ParentId) VALUES ('ad1fc128-4f5e-427c-b69a-c1849702f939', N'edition-view', N'Xem', '1379f1f6-acf1-4825-b6fa-7d48b111c237')
INSERT [UserRoles] ([UserId], [RoleId]) VALUES (N'f8a66017-e4ff-4283-a9b7-10c55922ef0f', 'ad1fc128-4f5e-427c-b69a-c1849702f939')

GO