.class public final Lcom/ushaqi/zhuishushenqi/db/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/c;->a:I

    .line 122
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/db/c;->b:[Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/c;->a:I

    return v0
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/c;->b:[Ljava/lang/String;

    return-object v0
.end method
