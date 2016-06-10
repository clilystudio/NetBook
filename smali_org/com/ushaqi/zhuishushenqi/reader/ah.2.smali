.class final Lcom/ushaqi/zhuishushenqi/reader/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ah;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ah;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;I)V

    .line 69
    return-void
.end method
