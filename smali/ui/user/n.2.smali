.class final Lcom/ushaqi/zhuishushenqi/ui/user/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/n;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/n;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/app/Activity;)V

    .line 191
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/n;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const-string v1, "EXTRA_CHANGE_AVATAR"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 192
    return-void
.end method
