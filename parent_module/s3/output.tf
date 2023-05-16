output "buckets_id" {
    value = [for x in aws_s3_bucket.groupA_S3 : x.id]
}