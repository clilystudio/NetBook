.class public Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, v5}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setAgree(Z)V

    .line 42
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/an;

    invoke-direct {v1, p0, v4}, Lcom/ushaqi/zhuishushenqi/widget/an;-><init>(Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/an;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 34
    invoke-virtual {p0, p0}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method public setAgree(Z)V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f0c03d1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    if-eqz p1, :cond_0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 51
    const v0, 0x7f020072

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setBackgroundResource(I)V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, p0}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 55
    const v0, 0x7f020071

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setPostId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->a:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->a:Ljava/lang/String;

    .line 1069
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 1070
    if-eqz v1, :cond_0

    .line 1071
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 1072
    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_0

    .line 1074
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setAgree(Z)V

    .line 66
    :cond_0
    return-void
.end method
