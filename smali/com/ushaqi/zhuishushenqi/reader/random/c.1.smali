.class final Lcom/ushaqi/zhuishushenqi/reader/random/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/c;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/c;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;I)V

    .line 57
    return-void
.end method
