.class final Lcom/iflytek/common/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/common/a/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/common/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/a/c;->b(Landroid/content/Context;)V

    return-void
.end method
