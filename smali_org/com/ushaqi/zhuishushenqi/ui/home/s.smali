.class final Lcom/ushaqi/zhuishushenqi/ui/home/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/s;->c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/s;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/s;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/s;->c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/s;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/s;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;Z)V

    .line 1491
    return-void
.end method
