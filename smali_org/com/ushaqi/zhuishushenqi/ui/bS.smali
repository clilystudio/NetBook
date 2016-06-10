.class final Lcom/ushaqi/zhuishushenqi/ui/bS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/bR;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/bR;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bS;->a:Lcom/ushaqi/zhuishushenqi/ui/bR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bS;->a:Lcom/ushaqi/zhuishushenqi/ui/bR;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bS;->a:Lcom/ushaqi/zhuishushenqi/ui/bR;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 489
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bS;->a:Lcom/ushaqi/zhuishushenqi/ui/bR;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 491
    :cond_0
    return-void
.end method
