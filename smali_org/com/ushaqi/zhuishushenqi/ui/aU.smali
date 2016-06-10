.class final Lcom/ushaqi/zhuishushenqi/ui/aU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/av;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aU;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aU;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/ui/aW;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aU;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/ui/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/aW;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aU;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aU;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/aW;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/aU;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/aW;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;Lcom/ushaqi/zhuishushenqi/ui/aW;)Lcom/ushaqi/zhuishushenqi/ui/aW;

    .line 182
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aU;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/ui/aW;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aW;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    :cond_1
    return-void
.end method
