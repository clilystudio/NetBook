.class public final Lcom/activeandroid/query/Delete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/activeandroid/query/Sqlable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public final from(Ljava/lang/Class;)Lcom/activeandroid/query/From;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/From;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/activeandroid/query/From;

    invoke-direct {v0, p1, p0}, Lcom/activeandroid/query/From;-><init>(Ljava/lang/Class;Lcom/activeandroid/query/Sqlable;)V

    return-object v0
.end method

.method public final toSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "DELETE "

    return-object v0
.end method
