.class final Lu/aly/ci;
.super Lcom/umeng/a/n;
.source "SourceFile"


# instance fields
.field private synthetic a:Lu/aly/ch;

.field private final synthetic b:Lu/aly/cx;


# direct methods
.method constructor <init>(Lu/aly/ch;Lu/aly/cx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lu/aly/ci;->a:Lu/aly/ch;

    iput-object p2, p0, Lu/aly/ci;->b:Lu/aly/cx;

    .line 40
    invoke-direct {p0}, Lcom/umeng/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/ch;

    invoke-static {v0}, Lu/aly/ch;->a(Lu/aly/ch;)Lu/aly/cw;

    move-result-object v0

    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/cx;

    invoke-interface {v0, v1}, Lu/aly/cw;->a(Lu/aly/cx;)V

    .line 43
    return-void
.end method
