.class public Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field a:Lcom/ushaqi/zhuishushenqi/ui/user/al;

.field private b:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 204
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->i()V

    .line 82
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/aj;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/aj;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/aj;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->a(I)V

    .line 54
    const-string v0, "\u514d\u5e7f\u544a"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->b(Ljava/lang/String;)V

    .line 55
    const v0, 0x7f0c0137

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/D;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/util/D;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/ao;)V

    .line 57
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/al;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/al;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/user/al;

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/user/al;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/ah;)V

    .line 59
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->b()V

    .line 63
    const-string v0, "switch_share_remove_ad"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const v0, 0x7f0c0138

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const v0, 0x7f0c0139

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    const v0, 0x7f0c013b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/ai;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ai;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onDestroy()V

    .line 88
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 89
    return-void
.end method
