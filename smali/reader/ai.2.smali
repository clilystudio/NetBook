.class final Lcom/ushaqi/zhuishushenqi/reader/ai;
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
    .line 97
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ai;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ai;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;)Lcom/ushaqi/zhuishushenqi/reader/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a()V

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ai;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->a()V

    .line 103
    return-void
.end method
