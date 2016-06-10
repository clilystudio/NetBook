.class final Lcom/ushaqi/zhuishushenqi/ui/aQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aQ;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aQ;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->a(I)V

    .line 76
    return-void
.end method
