﻿using Microsoft.AspNetCore.Identity.UI.Services;
using System.Reflection;
using System.Threading.Tasks;

namespace WebBanHang.Models
{
    public class EmailSender : IEmailSender
    {
        public Task SendEmailAsync(string email, string subject, string htmlMessage)
        {
            return Task.CompletedTask;
        }
    }
}
