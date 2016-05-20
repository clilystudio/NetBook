.class final Lcom/ushaqi/zhuishushenqi/ui/user/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    const-string v1, "my_account_click"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    return-void
.end method
