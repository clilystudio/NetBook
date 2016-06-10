.class final Lcom/ushaqi/zhuishushenqi/ui/home/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/t;->c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/t;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/t;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/t;->c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/t;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/t;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;Z)V

    .line 1504
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/t;->c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e()V

    .line 1505
    return-void
.end method
