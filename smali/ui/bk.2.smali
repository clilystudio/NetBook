.class final Lcom/ushaqi/zhuishushenqi/ui/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bk;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bk;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/v;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/adapter/v;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bk;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->getBigbookid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bk;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    .line 1471
    const-string v1, "mhd_list_item_click"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    return-void
.end method
