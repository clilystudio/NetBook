.class final Lcom/ushaqi/zhuishushenqi/widget/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/ak;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/ak;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/al;->a:Lcom/ushaqi/zhuishushenqi/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/al;->a:Lcom/ushaqi/zhuishushenqi/widget/ak;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/ak;->a(Lcom/ushaqi/zhuishushenqi/widget/ak;)Lcom/ushaqi/zhuishushenqi/widget/am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/al;->a:Lcom/ushaqi/zhuishushenqi/widget/ak;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/ak;->a(Lcom/ushaqi/zhuishushenqi/widget/ak;)Lcom/ushaqi/zhuishushenqi/widget/am;

    move-result-object v1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/al;->a:Lcom/ushaqi/zhuishushenqi/widget/ak;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/ak;->b(Lcom/ushaqi/zhuishushenqi/widget/ak;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;

    invoke-interface {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/am;->a(Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;)V

    .line 40
    :cond_0
    return-void
.end method
