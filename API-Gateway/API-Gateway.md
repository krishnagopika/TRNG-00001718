# AWS API Gateway

Amazon API Gateway is a fully managed service that makes it easy for developers to create, publish, maintain, monitor, and secure APIs at any scale. APIs act as the "front door" for applications to access data, business logic, or functionality from your backend services. Using API Gateway, you can create RESTful APIs and WebSocket APIs that enable real-time two-way communication applications. API Gateway supports containerized and serverless workloads, as well as web applications.

## Benifits of AWS Api Gateway

API Gateway in AWS provides several benefits when it comes to API management and design. Here are some key benefits of using API Gateway, including JSON rewriting and REST API design:

1. Centralized API Management: API Gateway acts as a central entry point for all your APIs. It simplifies the management of your APIs by providing a single interface to handle authentication, authorization, rate limiting, caching, request/response transformations, and more.

2. Scalability and High Availability: API Gateway is designed to handle high traffic loads and automatically scales to accommodate increased demand. It ensures high availability and reliability by distributing traffic across multiple availability zones.

3. Security and Access Control: API Gateway allows you to secure your APIs by integrating with AWS Identity and Access Management (IAM) and other authentication providers. It supports various authentication mechanisms such as API keys, IAM roles, OAuth, and custom authorizers, ensuring that only authorized clients can access your APIs.

4. Request/Response Transformation: API Gateway enables you to transform the request and response payloads using JSON rewriting. This feature allows you to modify the structure of incoming or outgoing JSON payloads without changing the backend services. It helps in aggregating data from multiple services, mapping between different data models, or hiding sensitive data from responses.

5. Caching and Performance Optimization: API Gateway provides built-in caching capabilities that can significantly improve the performance of your APIs. You can configure caching settings at different levels, such as stage, method, or individual endpoints. Caching reduces the load on your backend services and improves response times for frequently accessed data.

6. API Versioning and Deployment Management: API Gateway supports versioning of APIs, allowing you to roll out changes and new features without disrupting existing clients. You can manage different versions of your APIs and control the deployment of updates through stage management.

7. Monitoring and Analytics: API Gateway integrates with AWS CloudWatch, allowing you to monitor the performance and health of your APIs in real-time. You can set up custom metrics, alarms, and logs to track important API metrics, identify issues, and troubleshoot problems.

8. Developer Portal and Documentation: API Gateway provides a developer portal where you can publish documentation, SDKs, and interactive API documentation. It allows developers to explore and understand your APIs, test endpoints, and generate client code snippets.

9. Integration with AWS Services: API Gateway seamlessly integrates with other AWS services, such as AWS Lambda, AWS Step Functions, Amazon Cognito, Amazon S3, and more. This enables you to build serverless architectures, implement custom logic, and leverage existing AWS services within your APIs.

### Json rewriting

JSON rewriting in API gateway refers to the process of modifying or transforming JSON payloads as they pass through the gateway. API gateways act as intermediaries between clients and backend services, allowing them to manage and control API traffic. JSON rewriting provides the ability to manipulate the structure or content of JSON data during this process.

Few common scenarios where JSON rewriting in API gateways is useful:

1. **Request/Response Transformation**: API gateways can rewrite JSON payloads in both request and response flows. This enables them to convert data between different formats, such as translating JSON to XML or vice versa, before forwarding the request to the backend service or returning the response to the client.

2. **Data Filtering**: API gateways can selectively filter out or include specific fields from JSON payloads. This is often done to reduce the amount of data transferred over the network, improving performance and minimizing bandwidth consumption.

3. **Data Mapping**: JSON rewriting allows for mapping fields from the client's request to the backend service's expected format. It enables modifying field names, reordering fields, or even splitting or merging fields to match the target data structure.

4. **Data Validation**: API gateways can enforce data validation rules by examining JSON payloads. They can reject or modify requests that don't adhere to predefined validation criteria, such as data types, field constraints, or mandatory fields.

5. **Security Enhancements**: JSON rewriting can be used to add security-related elements to JSON payloads. This includes injecting authentication or authorization tokens, encrypting or decrypting sensitive data, or adding digital signatures for integrity and authenticity.

### API gateway HTTP

### API gateway REST

### connecting to lambda


