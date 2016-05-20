.class public Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "entrance_type"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;)V
    .locals 2

    .prologue
    .line 26
    .line 1063
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/cb;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/cf;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/cf;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/cb;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/ui/cd;)V

    .line 1069
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/cb;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;I)V
    .locals 7

    .prologue
    .line 26
    .line 1163
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 1164
    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1075
    :goto_0
    if-nez v0, :cond_1

    .line 1076
    const-string v0, "\u83b7\u53d6\u7528\u6237\u4fe1\u606f\u5931\u8d25,\u8bf7\u767b\u5f55\u540e\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 1170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1078
    :cond_1
    const-string v1, "\u6709\u4eba@\u4f60\uff0c\u4ecb\u7ecd\u4f60\u4e2a\u65b0\u670b\u53cb"

    .line 1079
    const-string v2, "\u6211\u5bf9\u5979\u5df2\u7ecf\u6709\u611f\u60c5\u4e86\u3002\u5168\u7f51\u5c0f\u8bf4\u514d\u8d39\u770b\uff0c\u518d\u6ca1\u6709\u5e7f\u544a\uff0c\u7b80\u76f4\u5b8c\u7f8e\uff01"

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://share.zhuishushenqi.com/invitation-card?recommended="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&op=rmad7"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1081
    const-string v4, "http://statics.zhuishushenqi.com/android-app-icon%2Fthanks_invite.png"

    .line 1082
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/cg;

    invoke-direct {v6, p0}, Lcom/ushaqi/zhuishushenqi/ui/cg;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;)V

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/high16 v1, 0x4000000

    .line 37
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 41
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_0
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f05017d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->b(I)V

    .line 47
    const v0, 0x7f0c0159

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ce;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ce;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
