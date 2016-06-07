.class final Lcom/ushaqi/zhuishushenqi/reader/cA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cA;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cA;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;I)V

    .line 61
    return-void
.end method
